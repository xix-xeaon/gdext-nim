{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdplaceholdertexturelayered; export gdplaceholdertexturelayered

const PlaceholderCubemapArray_vmap =
  PlaceholderTextureLayered.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PlaceholderCubemapArray]): Table[string, string] = PlaceholderCubemapArray_vmap