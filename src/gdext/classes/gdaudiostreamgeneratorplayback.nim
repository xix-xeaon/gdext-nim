{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudiostreamplaybackresampled; export gdaudiostreamplaybackresampled

proc pushFrame*(self: AudioStreamGeneratorPlayback; frame: Vector2): bool =
  expandMethodBind(className AudioStreamGeneratorPlayback, "push_frame", 3975407249)
  var `?param` = [getPtr frame]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc canPushBuffer*(self: AudioStreamGeneratorPlayback; amount: int32): bool =
  expandMethodBind(className AudioStreamGeneratorPlayback, "can_push_buffer", 1116898809)
  var `?param` = [getPtr amount]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc pushBuffer*(self: AudioStreamGeneratorPlayback; frames: PackedVector2Array): bool =
  expandMethodBind(className AudioStreamGeneratorPlayback, "push_buffer", 1361156557)
  var `?param` = [getPtr frames]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getFramesAvailable*(self: AudioStreamGeneratorPlayback): int32 =
  expandMethodBind(className AudioStreamGeneratorPlayback, "get_frames_available", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getSkips*(self: AudioStreamGeneratorPlayback): int32 =
  expandMethodBind(className AudioStreamGeneratorPlayback, "get_skips", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc clearBuffer*(self: AudioStreamGeneratorPlayback): void =
  expandMethodBind(className AudioStreamGeneratorPlayback, "clear_buffer", 3218959716)
  methodbind.ptrcall(self, nil)

const AudioStreamGeneratorPlayback_vmap =
  AudioStreamPlaybackResampled.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamGeneratorPlayback]): Table[string, string] = AudioStreamGeneratorPlayback_vmap