return {
  summary = 'Set the anchor point of the BallJoint.',
  description = 'Sets a new anchor point for the BallJoint.',
  arguments = {
    x = {
      type = 'number',
      description = 'The x coordinate of the anchor point, in world coordinates.'
    },
    y = {
      type = 'number',
      description = 'The y coordinate of the anchor point, in world coordinates.'
    },
    z = {
      type = 'number',
      description = 'The z coordinate of the anchor point, in world coordinates.'
    }
  },
  returns = {},
  variants = {
    {
      arguments = { 'x', 'y', 'z' },
      returns = {}
    }
  }
}
