{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexturelayeredrd; export gdtexturelayeredrd

const TextureCubemapRd_vmap =
  TextureLayeredRd.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TextureCubemapRd]): Table[string, string] = TextureCubemapRd_vmap