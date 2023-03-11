return {
  tag = 'sourceEffects',
  summary = 'Enable or disable an effect.',
  description = 'Enables or disables an effect on the Source.',
  arguments = {
    effect = {
      type = 'Effect',
      description = 'The effect.'
    },
    enable = {
      type = 'boolean',
      description = 'Whether the effect should be enabled.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'effect', 'enable' },
      returns = {}
    }
  },
  notes = [[
    The active spatializer will determine which effects are supported.  If an unsupported effect is
    enabled on a Source, no error will be reported.  Instead, it will be silently ignored.  See
    `lovr.audio.getSpatializer` for a table showing the effects supported by each spatializer.

    Calling this function on a non-spatial Source will throw an error.
  ]],
  related = {
    'Source:isSpatial'
  }
}
