{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc start*(self: HashingContext; `type`: HashingContext_HashType): Error =
  expandMethodBind(className HashingContext, "start", 3940338335)
  var `?param` = [getPtr `type`]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc update*(self: HashingContext; chunk: PackedByteArray): Error =
  expandMethodBind(className HashingContext, "update", 680677267)
  var `?param` = [getPtr chunk]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc finish*(self: HashingContext): PackedByteArray =
  expandMethodBind(className HashingContext, "finish", 2115431945)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

const HashingContext_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HashingContext]): Table[string, string] = HashingContext_vmap