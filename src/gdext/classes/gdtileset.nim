{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

proc getNextSourceId*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_next_source_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addSource*(self: TileSet; source: gdref TileSetSource; atlasSourceIdOverride: int32 = -1): int32 =
  expandMethodBind(className TileSet, "add_source", 1059186179)
  var `?param` = [getPtr source, getPtr atlasSourceIdOverride]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc removeSource*(self: TileSet; sourceId: int32): void =
  expandMethodBind(className TileSet, "remove_source", 1286410249)
  var `?param` = [getPtr sourceId]
  methodbind.ptrcall(self, addr `?param`[0])

proc setSourceId*(self: TileSet; sourceId: int32; newSourceId: int32): void =
  expandMethodBind(className TileSet, "set_source_id", 3937882851)
  var `?param` = [getPtr sourceId, getPtr newSourceId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSourceCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_source_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSourceId*(self: TileSet; index: int32): int32 =
  expandMethodBind(className TileSet, "get_source_id", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc hasSource*(self: TileSet; sourceId: int32): bool =
  expandMethodBind(className TileSet, "has_source", 1116898809)
  var `?param` = [getPtr sourceId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSource*(self: TileSet; sourceId: int32): gdref TileSetSource =
  expandMethodBind(className TileSet, "get_source", 1763540252)
  var `?param` = [getPtr sourceId]
  var ret: encoded gdref TileSetSource
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TileSetSource)

proc setTileShape*(self: TileSet; shape: TileSet_TileShape): void =
  expandMethodBind(className TileSet, "set_tile_shape", 2131427112)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileShape*(self: TileSet): TileSet_TileShape =
  expandMethodBind(className TileSet, "get_tile_shape", 716918169)
  var ret: encoded TileSet_TileShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TileSet_TileShape)

proc setTileLayout*(self: TileSet; layout: TileSet_TileLayout): void =
  expandMethodBind(className TileSet, "set_tile_layout", 1071216679)
  var `?param` = [getPtr layout]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileLayout*(self: TileSet): TileSet_TileLayout =
  expandMethodBind(className TileSet, "get_tile_layout", 194628839)
  var ret: encoded TileSet_TileLayout
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TileSet_TileLayout)

proc setTileOffsetAxis*(self: TileSet; alignment: TileSet_TileOffsetAxis): void =
  expandMethodBind(className TileSet, "set_tile_offset_axis", 3300198521)
  var `?param` = [getPtr alignment]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileOffsetAxis*(self: TileSet): TileSet_TileOffsetAxis =
  expandMethodBind(className TileSet, "get_tile_offset_axis", 762494114)
  var ret: encoded TileSet_TileOffsetAxis
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TileSet_TileOffsetAxis)

proc setTileSize*(self: TileSet; size: Vector2i): void =
  expandMethodBind(className TileSet, "set_tile_size", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileSize*(self: TileSet): Vector2i =
  expandMethodBind(className TileSet, "get_tile_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setUvClipping*(self: TileSet; uvClipping: bool): void =
  expandMethodBind(className TileSet, "set_uv_clipping", 2586408642)
  var `?param` = [getPtr uvClipping]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUvClipping*(self: TileSet): bool =
  expandMethodBind(className TileSet, "is_uv_clipping", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getOcclusionLayersCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_occlusion_layers_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addOcclusionLayer*(self: TileSet; toPosition: int32 = -1): void =
  expandMethodBind(className TileSet, "add_occlusion_layer", 1025054187)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveOcclusionLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  expandMethodBind(className TileSet, "move_occlusion_layer", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeOcclusionLayer*(self: TileSet; layerIndex: int32): void =
  expandMethodBind(className TileSet, "remove_occlusion_layer", 1286410249)
  var `?param` = [getPtr layerIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setOcclusionLayerLightMask*(self: TileSet; layerIndex: int32; lightMask: int32): void =
  expandMethodBind(className TileSet, "set_occlusion_layer_light_mask", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr lightMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOcclusionLayerLightMask*(self: TileSet; layerIndex: int32): int32 =
  expandMethodBind(className TileSet, "get_occlusion_layer_light_mask", 923996154)
  var `?param` = [getPtr layerIndex]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setOcclusionLayerSdfCollision*(self: TileSet; layerIndex: int32; sdfCollision: bool): void =
  expandMethodBind(className TileSet, "set_occlusion_layer_sdf_collision", 300928843)
  var `?param` = [getPtr layerIndex, getPtr sdfCollision]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOcclusionLayerSdfCollision*(self: TileSet; layerIndex: int32): bool =
  expandMethodBind(className TileSet, "get_occlusion_layer_sdf_collision", 1116898809)
  var `?param` = [getPtr layerIndex]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPhysicsLayersCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_physics_layers_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addPhysicsLayer*(self: TileSet; toPosition: int32 = -1): void =
  expandMethodBind(className TileSet, "add_physics_layer", 1025054187)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc movePhysicsLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  expandMethodBind(className TileSet, "move_physics_layer", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc removePhysicsLayer*(self: TileSet; layerIndex: int32): void =
  expandMethodBind(className TileSet, "remove_physics_layer", 1286410249)
  var `?param` = [getPtr layerIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPhysicsLayerCollisionLayer*(self: TileSet; layerIndex: int32; layer: uint32): void =
  expandMethodBind(className TileSet, "set_physics_layer_collision_layer", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr layer]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsLayerCollisionLayer*(self: TileSet; layerIndex: int32): uint32 =
  expandMethodBind(className TileSet, "get_physics_layer_collision_layer", 923996154)
  var `?param` = [getPtr layerIndex]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc setPhysicsLayerCollisionMask*(self: TileSet; layerIndex: int32; mask: uint32): void =
  expandMethodBind(className TileSet, "set_physics_layer_collision_mask", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsLayerCollisionMask*(self: TileSet; layerIndex: int32): uint32 =
  expandMethodBind(className TileSet, "get_physics_layer_collision_mask", 923996154)
  var `?param` = [getPtr layerIndex]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc setPhysicsLayerPhysicsMaterial*(self: TileSet; layerIndex: int32; physicsMaterial: gdref PhysicsMaterial): void =
  expandMethodBind(className TileSet, "set_physics_layer_physics_material", 1018687357)
  var `?param` = [getPtr layerIndex, getPtr physicsMaterial]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsLayerPhysicsMaterial*(self: TileSet; layerIndex: int32): gdref PhysicsMaterial =
  expandMethodBind(className TileSet, "get_physics_layer_physics_material", 788318639)
  var `?param` = [getPtr layerIndex]
  var ret: encoded gdref PhysicsMaterial
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref PhysicsMaterial)

proc getTerrainSetsCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_terrain_sets_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addTerrainSet*(self: TileSet; toPosition: int32 = -1): void =
  expandMethodBind(className TileSet, "add_terrain_set", 1025054187)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveTerrainSet*(self: TileSet; terrainSet: int32; toPosition: int32): void =
  expandMethodBind(className TileSet, "move_terrain_set", 3937882851)
  var `?param` = [getPtr terrainSet, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTerrainSet*(self: TileSet; terrainSet: int32): void =
  expandMethodBind(className TileSet, "remove_terrain_set", 1286410249)
  var `?param` = [getPtr terrainSet]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTerrainSetMode*(self: TileSet; terrainSet: int32; mode: TileSet_TerrainMode): void =
  expandMethodBind(className TileSet, "set_terrain_set_mode", 3943003916)
  var `?param` = [getPtr terrainSet, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTerrainSetMode*(self: TileSet; terrainSet: int32): TileSet_TerrainMode =
  expandMethodBind(className TileSet, "get_terrain_set_mode", 2084469411)
  var `?param` = [getPtr terrainSet]
  var ret: encoded TileSet_TerrainMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TileSet_TerrainMode)

proc getTerrainsCount*(self: TileSet; terrainSet: int32): int32 =
  expandMethodBind(className TileSet, "get_terrains_count", 923996154)
  var `?param` = [getPtr terrainSet]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc addTerrain*(self: TileSet; terrainSet: int32; toPosition: int32 = -1): void =
  expandMethodBind(className TileSet, "add_terrain", 1230568737)
  var `?param` = [getPtr terrainSet, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveTerrain*(self: TileSet; terrainSet: int32; terrainIndex: int32; toPosition: int32): void =
  expandMethodBind(className TileSet, "move_terrain", 1649997291)
  var `?param` = [getPtr terrainSet, getPtr terrainIndex, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTerrain*(self: TileSet; terrainSet: int32; terrainIndex: int32): void =
  expandMethodBind(className TileSet, "remove_terrain", 3937882851)
  var `?param` = [getPtr terrainSet, getPtr terrainIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setTerrainName*(self: TileSet; terrainSet: int32; terrainIndex: int32; name: String): void =
  expandMethodBind(className TileSet, "set_terrain_name", 2285447957)
  var `?param` = [getPtr terrainSet, getPtr terrainIndex, getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTerrainName*(self: TileSet; terrainSet: int32; terrainIndex: int32): String =
  expandMethodBind(className TileSet, "get_terrain_name", 1391810591)
  var `?param` = [getPtr terrainSet, getPtr terrainIndex]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setTerrainColor*(self: TileSet; terrainSet: int32; terrainIndex: int32; color: Color): void =
  expandMethodBind(className TileSet, "set_terrain_color", 3733378741)
  var `?param` = [getPtr terrainSet, getPtr terrainIndex, getPtr color]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTerrainColor*(self: TileSet; terrainSet: int32; terrainIndex: int32): Color =
  expandMethodBind(className TileSet, "get_terrain_color", 2165839948)
  var `?param` = [getPtr terrainSet, getPtr terrainIndex]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc getNavigationLayersCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_navigation_layers_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addNavigationLayer*(self: TileSet; toPosition: int32 = -1): void =
  expandMethodBind(className TileSet, "add_navigation_layer", 1025054187)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveNavigationLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  expandMethodBind(className TileSet, "move_navigation_layer", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeNavigationLayer*(self: TileSet; layerIndex: int32): void =
  expandMethodBind(className TileSet, "remove_navigation_layer", 1286410249)
  var `?param` = [getPtr layerIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setNavigationLayerLayers*(self: TileSet; layerIndex: int32; layers: uint32): void =
  expandMethodBind(className TileSet, "set_navigation_layer_layers", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr layers]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayerLayers*(self: TileSet; layerIndex: int32): uint32 =
  expandMethodBind(className TileSet, "get_navigation_layer_layers", 923996154)
  var `?param` = [getPtr layerIndex]
  var ret: encoded uint32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint32)

proc setNavigationLayerLayerValue*(self: TileSet; layerIndex: int32; layerNumber: int32; value: bool): void =
  expandMethodBind(className TileSet, "set_navigation_layer_layer_value", 1383440665)
  var `?param` = [getPtr layerIndex, getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNavigationLayerLayerValue*(self: TileSet; layerIndex: int32; layerNumber: int32): bool =
  expandMethodBind(className TileSet, "get_navigation_layer_layer_value", 2522259332)
  var `?param` = [getPtr layerIndex, getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getCustomDataLayersCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_custom_data_layers_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc addCustomDataLayer*(self: TileSet; toPosition: int32 = -1): void =
  expandMethodBind(className TileSet, "add_custom_data_layer", 1025054187)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveCustomDataLayer*(self: TileSet; layerIndex: int32; toPosition: int32): void =
  expandMethodBind(className TileSet, "move_custom_data_layer", 3937882851)
  var `?param` = [getPtr layerIndex, getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCustomDataLayer*(self: TileSet; layerIndex: int32): void =
  expandMethodBind(className TileSet, "remove_custom_data_layer", 1286410249)
  var `?param` = [getPtr layerIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomDataLayerByName*(self: TileSet; layerName: String): int32 =
  expandMethodBind(className TileSet, "get_custom_data_layer_by_name", 1321353865)
  var `?param` = [getPtr layerName]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setCustomDataLayerName*(self: TileSet; layerIndex: int32; layerName: String): void =
  expandMethodBind(className TileSet, "set_custom_data_layer_name", 501894301)
  var `?param` = [getPtr layerIndex, getPtr layerName]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomDataLayerName*(self: TileSet; layerIndex: int32): String =
  expandMethodBind(className TileSet, "get_custom_data_layer_name", 844755477)
  var `?param` = [getPtr layerIndex]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setCustomDataLayerType*(self: TileSet; layerIndex: int32; layerType: Variant_Type): void =
  expandMethodBind(className TileSet, "set_custom_data_layer_type", 3492912874)
  var `?param` = [getPtr layerIndex, getPtr layerType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCustomDataLayerType*(self: TileSet; layerIndex: int32): Variant_Type =
  expandMethodBind(className TileSet, "get_custom_data_layer_type", 2990820875)
  var `?param` = [getPtr layerIndex]
  var ret: encoded Variant_Type
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant_Type)

proc setSourceLevelTileProxy*(self: TileSet; sourceFrom: int32; sourceTo: int32): void =
  expandMethodBind(className TileSet, "set_source_level_tile_proxy", 3937882851)
  var `?param` = [getPtr sourceFrom, getPtr sourceTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSourceLevelTileProxy*(self: TileSet; sourceFrom: int32): int32 =
  expandMethodBind(className TileSet, "get_source_level_tile_proxy", 3744713108)
  var `?param` = [getPtr sourceFrom]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc hasSourceLevelTileProxy*(self: TileSet; sourceFrom: int32): bool =
  expandMethodBind(className TileSet, "has_source_level_tile_proxy", 3067735520)
  var `?param` = [getPtr sourceFrom]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeSourceLevelTileProxy*(self: TileSet; sourceFrom: int32): void =
  expandMethodBind(className TileSet, "remove_source_level_tile_proxy", 1286410249)
  var `?param` = [getPtr sourceFrom]
  methodbind.ptrcall(self, addr `?param`[0])

proc setCoordsLevelTileProxy*(self: TileSet; pSourceFrom: int32; coordsFrom: Vector2i; sourceTo: int32; coordsTo: Vector2i): void =
  expandMethodBind(className TileSet, "set_coords_level_tile_proxy", 1769939278)
  var `?param` = [getPtr pSourceFrom, getPtr coordsFrom, getPtr sourceTo, getPtr coordsTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCoordsLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i): Array =
  expandMethodBind(className TileSet, "get_coords_level_tile_proxy", 2856536371)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc hasCoordsLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i): bool =
  expandMethodBind(className TileSet, "has_coords_level_tile_proxy", 3957903770)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeCoordsLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i): void =
  expandMethodBind(className TileSet, "remove_coords_level_tile_proxy", 2311374912)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32; sourceTo: int32; coordsTo: Vector2i; alternativeTo: int32): void =
  expandMethodBind(className TileSet, "set_alternative_level_tile_proxy", 3862385460)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom, getPtr sourceTo, getPtr coordsTo, getPtr alternativeTo]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): Array =
  expandMethodBind(className TileSet, "get_alternative_level_tile_proxy", 2303761075)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc hasAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): bool =
  expandMethodBind(className TileSet, "has_alternative_level_tile_proxy", 180086755)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeAlternativeLevelTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): void =
  expandMethodBind(className TileSet, "remove_alternative_level_tile_proxy", 2328951467)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom]
  methodbind.ptrcall(self, addr `?param`[0])

proc mapTileProxy*(self: TileSet; sourceFrom: int32; coordsFrom: Vector2i; alternativeFrom: int32): Array =
  expandMethodBind(className TileSet, "map_tile_proxy", 4267935328)
  var `?param` = [getPtr sourceFrom, getPtr coordsFrom, getPtr alternativeFrom]
  var ret: encoded Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Array)

proc cleanupInvalidTileProxies*(self: TileSet): void =
  expandMethodBind(className TileSet, "cleanup_invalid_tile_proxies", 3218959716)
  methodbind.ptrcall(self, nil)

proc clearTileProxies*(self: TileSet): void =
  expandMethodBind(className TileSet, "clear_tile_proxies", 3218959716)
  methodbind.ptrcall(self, nil)

proc addPattern*(self: TileSet; pattern: gdref TileMapPattern; index: int32 = -1): int32 =
  expandMethodBind(className TileSet, "add_pattern", 763712015)
  var `?param` = [getPtr pattern, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getPattern*(self: TileSet; index: int32 = -1): gdref TileMapPattern =
  expandMethodBind(className TileSet, "get_pattern", 4207737510)
  var `?param` = [getPtr index]
  var ret: encoded gdref TileMapPattern
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref TileMapPattern)

proc removePattern*(self: TileSet; index: int32): void =
  expandMethodBind(className TileSet, "remove_pattern", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPatternsCount*(self: TileSet): int32 =
  expandMethodBind(className TileSet, "get_patterns_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template tileShape*(self: TileSet): untyped = self.getTileShape()
template `tileShape=`*(self: TileSet; value) = self.setTileShape(value)

template tileLayout*(self: TileSet): untyped = self.getTileLayout()
template `tileLayout=`*(self: TileSet; value) = self.setTileLayout(value)

template tileOffsetAxis*(self: TileSet): untyped = self.getTileOffsetAxis()
template `tileOffsetAxis=`*(self: TileSet; value) = self.setTileOffsetAxis(value)

template tileSize*(self: TileSet): untyped = self.getTileSize()
template `tileSize=`*(self: TileSet; value) = self.setTileSize(value)

template uvClipping*(self: TileSet): untyped = self.isUvClipping()
template `uvClipping=`*(self: TileSet; value) = self.setUvClipping(value)

const TileSet_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileSet]): Table[string, string] = TileSet_vmap