{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc variantToBase64*(self: Marshalls; variant: Variant; fullObjects: bool = false): String =
  expandMethodBind(className Marshalls, "variant_to_base64", 3876248563)
  var `?param` = [getPtr variant, getPtr fullObjects]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc base64ToVariant*(self: Marshalls; base64Str: String; allowObjects: bool = false): Variant =
  expandMethodBind(className Marshalls, "base64_to_variant", 218087648)
  var `?param` = [getPtr base64Str, getPtr allowObjects]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc rawToBase64*(self: Marshalls; array: PackedByteArray): String =
  expandMethodBind(className Marshalls, "raw_to_base64", 3999417757)
  var `?param` = [getPtr array]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc base64ToRaw*(self: Marshalls; base64Str: String): PackedByteArray =
  expandMethodBind(className Marshalls, "base64_to_raw", 659035735)
  var `?param` = [getPtr base64Str]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc utf8ToBase64*(self: Marshalls; utf8Str: String): String =
  expandMethodBind(className Marshalls, "utf8_to_base64", 1703090593)
  var `?param` = [getPtr utf8Str]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc base64ToUtf8*(self: Marshalls; base64Str: String): String =
  expandMethodBind(className Marshalls, "base64_to_utf8", 1703090593)
  var `?param` = [getPtr base64Str]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

const Marshalls_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Marshalls]): Table[string, string] = Marshalls_vmap