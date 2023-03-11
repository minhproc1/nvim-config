return {
  tag = 'sourceEffects',
  summary = 'Check if an effect is enabled.',
  description = 'Returns whether a given `Effect` is enabled for the Source.',
  arguments = {
    effect = {
      type = 'Effect',
      description = 'The effect.'
    }
  },
  returns = {
    enabled = {
      type = 'boolean',
      description = 'Whether the effect is enabled.'
    }
  },
  variants = {
    {
      arguments = { 'effect' },
      returns = { 'enabled' }
    }
  },
  notes = [[
    The active spatializer will determine which effects are supported.  If an unsupported effect is
    enabled on a Source, no error will be reported.  Instead, it will be silently ignored.  See
    `lovr.audio.getSpatializer` for a table showing the effects supported by each spatializer.

    Calling this function on a non-spatial Source will always return false.
  ]],
  related = {
    'Source:isSpatial'
  }
}
