{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdanimationnodesync; export gdanimationnodesync

const AnimationNodeAdd2_vmap =
  AnimationNodeSync.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeAdd2]): Table[string, string] = AnimationNodeAdd2_vmap