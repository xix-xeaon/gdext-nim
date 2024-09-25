{.warning[UnusedImport]: off.}

import gdext/buildconf

import gdext/utils/staticevents
export staticevents.execon, staticevents.expandEvent

import gdext/dirty/gdextensioninterface
export InitializationLevel, VariantType, gdcall, CallError, CallErrorType

import gdext/core/[ builtinindex, geometrics, gdrefs, gdtypedarray ]
export              builtinindex, geometrics, gdrefs, gdtypedarray

import gdext/core/[typeshift, gdclass]
export typeshift.get, typeshift.variant
export gdclass.Object, gdclass.RefCounted

import gdext/surface/[ builtinclasses, classindex, globalenums, localenums, structs ]
export                 builtinclasses, classindex, globalenums, localenums, structs

import gdext/surface/utilityfuncs
export utilityfuncs except print

import gdext/surface/[ init, userclass, userenums, properties, classutils, variantutils, nodeutils, arrayutils, conversions ]
export                 init, userclass, userenums, properties, classutils, variantutils, nodeutils, arrayutils, conversions

import gdext/classes/[gdengine, gdextensionmain]
export gdengine.isEditorHint
export gdextensionmain.ExtensionMain, gdextensionmain.extmain

proc print*(args: varargs[Variant, variant]) =
  if unlikely(args.len == 0): return
  utilityfuncs.print(args[0], args[1..^1])