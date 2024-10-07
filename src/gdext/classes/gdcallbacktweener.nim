{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtweener; export gdtweener

proc setDelay*(self: CallbackTweener; delay: float64): gdref CallbackTweener =
  expandMethodBind(className CallbackTweener, "set_delay", 3008182292)
  var `?param` = [getPtr delay]
  var ret: encoded gdref CallbackTweener
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref CallbackTweener)

const CallbackTweener_vmap =
  Tweener.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CallbackTweener]): Table[string, string] = CallbackTweener_vmap