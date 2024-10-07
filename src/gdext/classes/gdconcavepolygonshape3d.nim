{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdshape3d; export gdshape3d

proc setFaces*(self: ConcavePolygonShape3D; faces: PackedVector3Array): void =
  expandMethodBind(className ConcavePolygonShape3D, "set_faces", 334873810)
  var `?param` = [getPtr faces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFaces*(self: ConcavePolygonShape3D): PackedVector3Array =
  expandMethodBind(className ConcavePolygonShape3D, "get_faces", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc setBackfaceCollisionEnabled*(self: ConcavePolygonShape3D; enabled: bool): void =
  expandMethodBind(className ConcavePolygonShape3D, "set_backface_collision_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isBackfaceCollisionEnabled*(self: ConcavePolygonShape3D): bool =
  expandMethodBind(className ConcavePolygonShape3D, "is_backface_collision_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template data*(self: ConcavePolygonShape3D): untyped = self.getFaces()
template `data=`*(self: ConcavePolygonShape3D; value) = self.setFaces(value)

template backfaceCollision*(self: ConcavePolygonShape3D): untyped = self.isBackfaceCollisionEnabled()
template `backfaceCollision=`*(self: ConcavePolygonShape3D; value) = self.setBackfaceCollisionEnabled(value)

const ConcavePolygonShape3D_vmap =
  Shape3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ConcavePolygonShape3D]): Table[string, string] = ConcavePolygonShape3D_vmap