{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method setupLocalToScene*(self: Resource): void {.base.} = (discard)
proc setupLocalToScene(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[Resource](p_instance).setupLocalToScene()
template setupLocalToScene_bind*(_: typedesc[Resource]): ClassCallVirtual = setupLocalToScene

proc setPath*(self: Resource; path: String): void =
  expandMethodBind(className Resource, "set_path", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc takeOverPath*(self: Resource; path: String): void =
  expandMethodBind(className Resource, "take_over_path", 83702148)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPath*(self: Resource): String =
  expandMethodBind(className Resource, "get_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setName*(self: Resource; name: String): void =
  expandMethodBind(className Resource, "set_name", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getName*(self: Resource): String =
  expandMethodBind(className Resource, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getRid*(self: Resource): Rid =
  expandMethodBind(className Resource, "get_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc setLocalToScene*(self: Resource; enable: bool): void =
  expandMethodBind(className Resource, "set_local_to_scene", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isLocalToScene*(self: Resource): bool =
  expandMethodBind(className Resource, "is_local_to_scene", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getLocalScene*(self: Resource): Node =
  expandMethodBind(className Resource, "get_local_scene", 3160264692)
  var ret: encoded Node
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Node)

proc setupLocalToScene*(self: Resource): void =
  expandMethodBind(className Resource, "setup_local_to_scene", 3218959716)
  methodbind.ptrcall(self, nil)

proc generateSceneUniqueId*(_: Resource): String =
  expandMethodBind(className Resource, "generate_scene_unique_id", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(nil, addr ret)
  (addr ret).decode_result(String)

proc setSceneUniqueId*(self: Resource; id: String): void =
  expandMethodBind(className Resource, "set_scene_unique_id", 83702148)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSceneUniqueId*(self: Resource): String =
  expandMethodBind(className Resource, "get_scene_unique_id", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc emitChanged*(self: Resource): void =
  expandMethodBind(className Resource, "emit_changed", 3218959716)
  methodbind.ptrcall(self, nil)

proc duplicate*(self: Resource; subresources: bool = false): gdref Resource =
  expandMethodBind(className Resource, "duplicate", 482882304)
  var `?param` = [getPtr subresources]
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Resource)

template resourceLocalToScene*(self: Resource): untyped = self.isLocalToScene()
template `resourceLocalToScene=`*(self: Resource; value) = self.setLocalToScene(value)

template resourcePath*(self: Resource): untyped = self.getPath()
template `resourcePath=`*(self: Resource; value) = self.setPath(value)

template resourceName*(self: Resource): untyped = self.getName()
template `resourceName=`*(self: Resource; value) = self.setName(value)

template resourceSceneUniqueId*(self: Resource): untyped = self.getSceneUniqueId()
template `resourceSceneUniqueId=`*(self: Resource; value) = self.setSceneUniqueId(value)

const Resource_vmap =
  RefCounted.vmap.concat toTable {
    "setuplocaltoscene" : "_setup_local_to_scene",
    }
template vmap*(_: typedesc[Resource]): Table[string, string] = Resource_vmap

proc changed*(self: Resource): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("changed")
  self.emitSignal(signalname)

proc setupLocalToSceneRequested*(self: Resource): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("setup_local_to_scene_requested")
  self.emitSignal(signalname)