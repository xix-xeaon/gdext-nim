{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setSize*(self: RibbonTrailMesh; size: Float): void =
  expandMethodBind(className RibbonTrailMesh, "set_size", 373806689)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: RibbonTrailMesh): Float =
  expandMethodBind(className RibbonTrailMesh, "get_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSections*(self: RibbonTrailMesh; sections: int32): void =
  expandMethodBind(className RibbonTrailMesh, "set_sections", 1286410249)
  var `?param` = [getPtr sections]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSections*(self: RibbonTrailMesh): int32 =
  expandMethodBind(className RibbonTrailMesh, "get_sections", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSectionLength*(self: RibbonTrailMesh; sectionLength: Float): void =
  expandMethodBind(className RibbonTrailMesh, "set_section_length", 373806689)
  var `?param` = [getPtr sectionLength]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSectionLength*(self: RibbonTrailMesh): Float =
  expandMethodBind(className RibbonTrailMesh, "get_section_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSectionSegments*(self: RibbonTrailMesh; sectionSegments: int32): void =
  expandMethodBind(className RibbonTrailMesh, "set_section_segments", 1286410249)
  var `?param` = [getPtr sectionSegments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSectionSegments*(self: RibbonTrailMesh): int32 =
  expandMethodBind(className RibbonTrailMesh, "get_section_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCurve*(self: RibbonTrailMesh; curve: gdref Curve): void =
  expandMethodBind(className RibbonTrailMesh, "set_curve", 270443179)
  var `?param` = [getPtr curve]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCurve*(self: RibbonTrailMesh): gdref Curve =
  expandMethodBind(className RibbonTrailMesh, "get_curve", 2460114913)
  var ret: encoded gdref Curve
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Curve)

proc setShape*(self: RibbonTrailMesh; shape: RibbonTrailMesh_Shape): void =
  expandMethodBind(className RibbonTrailMesh, "set_shape", 1684440262)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: RibbonTrailMesh): RibbonTrailMesh_Shape =
  expandMethodBind(className RibbonTrailMesh, "get_shape", 1317484155)
  var ret: encoded RibbonTrailMesh_Shape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RibbonTrailMesh_Shape)

template shape*(self: RibbonTrailMesh): untyped = self.getShape()
template `shape=`*(self: RibbonTrailMesh; value) = self.setShape(value)

template size*(self: RibbonTrailMesh): untyped = self.getSize()
template `size=`*(self: RibbonTrailMesh; value) = self.setSize(value)

template sections*(self: RibbonTrailMesh): untyped = self.getSections()
template `sections=`*(self: RibbonTrailMesh; value) = self.setSections(value)

template sectionLength*(self: RibbonTrailMesh): untyped = self.getSectionLength()
template `sectionLength=`*(self: RibbonTrailMesh; value) = self.setSectionLength(value)

template sectionSegments*(self: RibbonTrailMesh): untyped = self.getSectionSegments()
template `sectionSegments=`*(self: RibbonTrailMesh; value) = self.setSectionSegments(value)

template curve*(self: RibbonTrailMesh): untyped = self.getCurve()
template `curve=`*(self: RibbonTrailMesh; value) = self.setCurve(value)

const RibbonTrailMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RibbonTrailMesh]): Table[string, string] = RibbonTrailMesh_vmap