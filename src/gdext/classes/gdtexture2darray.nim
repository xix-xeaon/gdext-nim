{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdimagetexturelayered; export gdimagetexturelayered

proc createPlaceholder*(self: Texture2DArray): gdref Resource =
  expandMethodBind(className Texture2DArray, "create_placeholder", 121922552)
  var ret: encoded gdref Resource
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Resource)

const Texture2DArray_vmap =
  ImageTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Texture2DArray]): Table[string, string] = Texture2DArray_vmap