{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeSmoothStep; opType: VisualShaderNodeSmoothStep_OpType): void =
  expandMethodBind(className VisualShaderNodeSmoothStep, "set_op_type", 2427426148)
  var `?param` = [getPtr opType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeSmoothStep): VisualShaderNodeSmoothStep_OpType =
  expandMethodBind(className VisualShaderNodeSmoothStep, "get_op_type", 359640855)
  var ret: encoded VisualShaderNodeSmoothStep_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeSmoothStep_OpType)

template opType*(self: VisualShaderNodeSmoothStep): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeSmoothStep; value) = self.setOpType(value)

const VisualShaderNodeSmoothStep_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeSmoothStep]): Table[string, string] = VisualShaderNodeSmoothStep_vmap