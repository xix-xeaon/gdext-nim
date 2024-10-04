{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFunction*(self: VisualShaderNodeFloatFunc; `func`: VisualShaderNodeFloatFunc_Function): void =
  expandMethodBind(className VisualShaderNodeFloatFunc, "set_function", 536026177)
  var `?param` = [getPtr `func`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFunction*(self: VisualShaderNodeFloatFunc): VisualShaderNodeFloatFunc_Function =
  expandMethodBind(className VisualShaderNodeFloatFunc, "get_function", 2033948868)
  var ret: encoded VisualShaderNodeFloatFunc_Function
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeFloatFunc_Function)

template function*(self: VisualShaderNodeFloatFunc): untyped = self.getFunction()
template `function=`*(self: VisualShaderNodeFloatFunc; value) = self.setFunction(value)

const VisualShaderNodeFloatFunc_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeFloatFunc]): Table[string, string] = VisualShaderNodeFloatFunc_vmap