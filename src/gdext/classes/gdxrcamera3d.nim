{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcamera3d; export gdcamera3d

const XrCamera3D_vmap =
  Camera3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrCamera3D]): Table[string, string] = XrCamera3D_vmap