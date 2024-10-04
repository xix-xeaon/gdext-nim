{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeconstant; export gdvisualshadernodeconstant

proc setConstant*(self: VisualShaderNodeTransformConstant; constant: Transform3D): void =
  expandMethodBind(className VisualShaderNodeTransformConstant, "set_constant", 2952846383)
  var `?param` = [getPtr constant]
  methodbind.ptrcall(self, addr `?param`[0])

proc getConstant*(self: VisualShaderNodeTransformConstant): Transform3D =
  expandMethodBind(className VisualShaderNodeTransformConstant, "get_constant", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

template constant*(self: VisualShaderNodeTransformConstant): untyped = self.getConstant()
template `constant=`*(self: VisualShaderNodeTransformConstant; value) = self.setConstant(value)

const VisualShaderNodeTransformConstant_vmap =
  VisualShaderNodeConstant.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTransformConstant]): Table[string, string] = VisualShaderNodeTransformConstant_vmap