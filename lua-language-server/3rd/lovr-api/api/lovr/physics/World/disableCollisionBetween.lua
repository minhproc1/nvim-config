return {
  tag = 'worldCollision',
  summary = 'Disable collision between two tags.',
  description = 'Disables collision between two collision tags.',
  arguments = {
    tag1 = {
      type = 'string',
      description = 'The first tag.'
    },
    tag2 = {
      type = 'string',
      description = 'The second tag.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'tag1', 'tag2' },
      returns = {}
    }
  },
  notes = [[
    Tags must be set up when creating the World, see `lovr.physics.newWorld`.

    By default, collision is enabled between all tags.
  ]],
  related = {
    'lovr.physics.newWorld',
    'World:enableCollisionBetween',
    'World:isCollisionEnabledBetween'
  }
}
