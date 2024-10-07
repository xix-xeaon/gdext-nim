{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdjoint2d; export gdjoint2d

proc setLength*(self: GrooveJoint2D; length: Float): void =
  expandMethodBind(className GrooveJoint2D, "set_length", 373806689)
  var `?param` = [getPtr length]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLength*(self: GrooveJoint2D): Float =
  expandMethodBind(className GrooveJoint2D, "get_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setInitialOffset*(self: GrooveJoint2D; offset: Float): void =
  expandMethodBind(className GrooveJoint2D, "set_initial_offset", 373806689)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInitialOffset*(self: GrooveJoint2D): Float =
  expandMethodBind(className GrooveJoint2D, "get_initial_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

template length*(self: GrooveJoint2D): untyped = self.getLength()
template `length=`*(self: GrooveJoint2D; value) = self.setLength(value)

template initialOffset*(self: GrooveJoint2D): untyped = self.getInitialOffset()
template `initialOffset=`*(self: GrooveJoint2D; value) = self.setInitialOffset(value)

const GrooveJoint2D_vmap =
  Joint2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[GrooveJoint2D]): Table[string, string] = GrooveJoint2D_vmap