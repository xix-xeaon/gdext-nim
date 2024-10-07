{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeColorFunc; `func`: VisualShaderNodeColorFunc_Function): void =
  expandMethodBind(className VisualShaderNodeColorFunc, "set_function", 3973396138)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeColorFunc): VisualShaderNodeColorFunc_Function =
  expandMethodBind(className VisualShaderNodeColorFunc, "get_function", 554863321)
  var ret: encoded VisualShaderNodeColorFunc_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeColorFunc_Function)

template function*(self: VisualShaderNodeColorFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeColorFunc; value) = self.setFunction(value)

const VisualShaderNodeColorFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeColorFunc]): Table[string, string] = VisualShaderNodeColorFunc_vmap