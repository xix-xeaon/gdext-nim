{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getTilesCount*(self: TileSetSource): int32 =
  expandMethodBind(className TileSetSource, "get_tiles_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getTileId*(self: TileSetSource; index: int32): Vector2i =
  expandMethodBind(className TileSetSource, "get_tile_id", 880721226)
  var `?param` = [getPtr index]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc hasTile*(self: TileSetSource; atlasCoords: Vector2i): bool =
  expandMethodBind(className TileSetSource, "has_tile", 3900751641)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getAlternativeTilesCount*(self: TileSetSource; atlasCoords: Vector2i): int32 =
  expandMethodBind(className TileSetSource, "get_alternative_tiles_count", 2485466453)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getAlternativeTileId*(self: TileSetSource; atlasCoords: Vector2i; index: int32): int32 =
  expandMethodBind(className TileSetSource, "get_alternative_tile_id", 89881719)
  var `?param` = [getPtr atlasCoords, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc hasAlternativeTile*(self: TileSetSource; atlasCoords: Vector2i; alternativeTile: int32): bool =
  expandMethodBind(className TileSetSource, "has_alternative_tile", 1073731340)
  var `?param` = [getPtr atlasCoords, getPtr alternativeTile]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

const TileSetSource_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileSetSource]): Table[string, string] = TileSetSource_vmap