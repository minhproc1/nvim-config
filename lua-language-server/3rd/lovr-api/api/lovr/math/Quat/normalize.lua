return {
  summary = 'Normalize the length of the quaternion to 1.',
  description = [[
    Adjusts the values in the quaternion so that its length becomes 1.
  ]],
  arguments = {},
  returns = {
    q = {
      type = 'Quat',
      description = 'The original quaternion.'
    }
  },
  variants = {
    {
      arguments = {},
      returns = { 'q' }
    }
  },
  notes = [[
    A common source of bugs with quaternions is to forget to normalize them after performing a
    series of operations on them.  Try normalizing a quaternion if some of the calculations aren't
    working quite right!
  ]],
  related = {
    'Quat:length'
  }
}
