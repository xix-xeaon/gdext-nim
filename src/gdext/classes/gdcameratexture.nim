{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdtexture2d; export gdtexture2d

proc setCameraFeedId*(self: CameraTexture; feedId: int32): void =
  expandMethodBind(className CameraTexture, "set_camera_feed_id", 1286410249)
  var `?param` = [getPtr feedId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraFeedId*(self: CameraTexture): int32 =
  expandMethodBind(className CameraTexture, "get_camera_feed_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setWhichFeed*(self: CameraTexture; whichFeed: CameraServer_FeedImage): void =
  expandMethodBind(className CameraTexture, "set_which_feed", 1595299230)
  var `?param` = [getPtr whichFeed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWhichFeed*(self: CameraTexture): CameraServer_FeedImage =
  expandMethodBind(className CameraTexture, "get_which_feed", 91039457)
  var ret: encoded CameraServer_FeedImage
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CameraServer_FeedImage)

proc setCameraActive*(self: CameraTexture; active: bool): void =
  expandMethodBind(className CameraTexture, "set_camera_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraActive*(self: CameraTexture): bool =
  expandMethodBind(className CameraTexture, "get_camera_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template cameraFeedId*(self: CameraTexture): untyped = self.getCameraFeedId()
template `cameraFeedId=`*(self: CameraTexture; value) = self.setCameraFeedId(value)

template whichFeed*(self: CameraTexture): untyped = self.getWhichFeed()
template `whichFeed=`*(self: CameraTexture; value) = self.setWhichFeed(value)

template cameraIsActive*(self: CameraTexture): untyped = self.getCameraActive()
template `cameraIsActive=`*(self: CameraTexture; value) = self.setCameraActive(value)

const CameraTexture_vmap =
  Texture2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CameraTexture]): Table[string, string] = CameraTexture_vmap