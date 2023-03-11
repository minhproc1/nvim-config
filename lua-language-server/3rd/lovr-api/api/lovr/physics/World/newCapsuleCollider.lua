return {
  tag = 'colliders',
  summary = 'Add a Collider with a CapsuleShape to the World.',
  description = 'Adds a new Collider to the World with a CapsuleShape already attached.',
  arguments = {
    x = {
      type = 'number',
      default = '0',
      description = 'The x coordinate of the center of the capsule.'
    },
    y = {
      type = 'number',
      default = '0',
      description = 'The y coordinate of the center of the capsule.'
    },
    z = {
      type = 'number',
      default = '0',
      description = 'The z coordinate of the center of the capsule.'
    },
    radius = {
      type = 'number',
      default = '1',
      description = 'The radius of the capsule, in meters.'
    },
    length = {
      type = 'number',
      default = '1',
      description = 'The length of the capsule, not including the caps, in meters.'
    }
  },
  returns = {
    collider = {
      type = 'Collider',
      description = 'The new Collider.'
    }
  },
  variants = {
    {
      arguments = { 'x', 'y', 'z', 'radius', 'length' },
      returns = { 'collider' }
    }
  },
  related = {
    'CapsuleShape',
    'Collider',
    'World:newCollider',
    'World:newBoxCollider',
    'World:newCylinderCollider',
    'World:newMeshCollider',
    'World:newSphereCollider',
    'World:newTerrainCollider'
  }
}
