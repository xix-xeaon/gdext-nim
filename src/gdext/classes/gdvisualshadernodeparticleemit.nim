{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFlags*(self: VisualShaderNodeParticleEmit; flags: VisualShaderNodeParticleEmit_EmitFlags): void =
  expandMethodBind(className VisualShaderNodeParticleEmit, "set_flags", 3960756792)
  var `?param` = [getPtr flags]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFlags*(self: VisualShaderNodeParticleEmit): VisualShaderNodeParticleEmit_EmitFlags =
  expandMethodBind(className VisualShaderNodeParticleEmit, "get_flags", 171277835)
  var ret: encoded VisualShaderNodeParticleEmit_EmitFlags
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeParticleEmit_EmitFlags)

template flags*(self: VisualShaderNodeParticleEmit): untyped = self.getFlags()
template `flags=`*(self: VisualShaderNodeParticleEmit; value) = self.setFlags(value)

const VisualShaderNodeParticleEmit_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleEmit]): Table[string, string] = VisualShaderNodeParticleEmit_vmap