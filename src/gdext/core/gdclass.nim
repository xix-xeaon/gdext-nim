import std/[tables]

import gdext/buildconf

import gdext/dirty/gdextensioninterface
import gdext/utils/macros

import gdext/core/commandindex
import gdext/core/builtinindex
import gdext/core/extracommands
import gdext/core/objectcontrol

when Dev.debugCallbacks:
  from strutils import join

  proc decho(args: varargs[string, `$`]) =
    stderr.writeLine args.join("")

  type SYNC* = enum
    INSTANTIATE      = "SYNC--------INSTANTIATE: "
    CREATE_BIND      = "SYNC----CREATE(LIBRARY): "
    CREATE_CALL      = "SYNC----CREATE(BUILTIN): "
    FREE_BIND        = "SYNC------FREE(LIBRARY): "
    FREE_CALL        = "SYNC------FREE(BUILTIN): "
    RECREATE_BIND    = "SYNC--RECREATE(LIBRARY): "
    REFERENCE        = "SYNC-REFERENCE(BUILTIN): "
    REFERENCE_BIND   = "SYNC----------REFERENCE: "
    UNREFERENCE_BIND = "SYNC----------REFERENCE: "
    DESTROY          = "SYNC------------DESTROY: "

type
  GodotClass* = ref object of RootObj
    control: ObjectControl
  GodotClassMeta* = object
    virtualMethods*: Table[StringName, ClassCallVirtual]
    className*: StringName
    callbacks*: InstanceBindingCallbacks

  SomeClass* = GodotClass
  SomeEngineClass* = concept type t
    t is GodotClass
    t.EngineClass is t
  SomeUserClass* = concept type t
    t is GodotClass
    t.EngineClass isnot t

template isRefCounted*(_: typedesc[GodotClass]): static bool = false

template CLASS_getObjectPtr*(class: GodotClass): ObjectPtr =
  if class.isNil: nil
  else: class.control.owner
template CLASS_getObjectPtrPtr*(class: GodotClass): ptr ObjectPtr =
  if class.isNil or class.control.owner.isNil: nil
  else: addr class.control.owner

template CLASS_passOwnershipToGodot*(class: GodotClass) =
  class.control.flags.incl OC_godotManaged
  GC_ref class
template CLASS_unlockDestroy*(class: GodotClass) =
  if OC_godotManaged in class.control.flags:
    GC_unref class

method init*(self: GodotClass) {.base.} = discard

proc createClass*[T: SomeClass](Type: typedesc[T]; o: ObjectPtr): Type =
  result = Type(
    control: ObjectControl(
      owner: o, ))
  when Dev.debugCallbacks:
    result.name = $Type
  init result

proc reference_callback[T](p_token: pointer; p_binding: pointer; p_reference: Bool): Bool {.gdcall.} =
  result = true
  when Dev.debugCallbacks:
    let class = cast[T](p_binding)
    let count = hook_getReferenceCount CLASS_getObjectPtr class
    decho SYNC.REFERENCE, $typeof T, "(", (if reference: $count.pred & " +1" else: $count.succ & " -1"), ")"

proc create_callback[T](p_token: pointer; p_instance: pointer): pointer {.gdcall.} =
  when T is SomeEngineClass:
    let class = createClass(T, cast[ObjectPtr](p_instance))
    CLASS_passOwnershipToGodot class
    result = cast[pointer](class)
  when Dev.debugCallbacks:
    decho SYNC.CREATE_CALL, $typeof T

proc free_callback[T](p_token: pointer; p_instance: pointer; p_binding: pointer) {.gdcall.} =
  when T is SomeEngineClass:
    let class = cast[T](p_binding)
    CLASS_unlockDestroy class
  when Dev.debugCallbacks:
    decho SYNC.FREE_CALL, $typeof T


proc Meta*(T: typedesc[SomeClass]): var GodotClassMeta =
  # The global specification to reference seems to be invalid and behaves the same
  # as a normal local variable. (It is immediately freed.)
  var instance {.global.} : GodotClassMeta
  once:
    instance = GodotClassMeta(
      className: stringName $T,
      callbacks: InstanceBindingCallbacks(
        reference_callback: reference_callback[T],
        create_callback: create_callback[T],
        free_callback: free_callback[T],
      ),
    )
  instance

template className*(T: typedesc[SomeClass]): var StringName = Meta(T).className
template callbacks*(T: typedesc[SomeClass]): var InstanceBindingCallbacks = Meta(T).callbacks
template vmethods*(T: typedesc[SomeClass]): var Table[StringName, ClassCallVirtual] = Meta(T).virtualMethods

proc getInstance*[T: GodotClass](p_engine_object: ObjectPtr; _: typedesc[T]): T =
  if p_engine_object.isNil: return
  result = cast[T](interface_objectGetInstanceBinding(p_engine_object, environment.library, addr T.callbacks))

macro Super*(Type: typedesc): typedesc = Type.super