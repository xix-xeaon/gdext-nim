{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffectfilter; export gdaudioeffectfilter

const AudioEffectLowPassFilter_vmap =
  AudioEffectFilter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectLowPassFilter]): Table[string, string] = AudioEffectLowPassFilter_vmap