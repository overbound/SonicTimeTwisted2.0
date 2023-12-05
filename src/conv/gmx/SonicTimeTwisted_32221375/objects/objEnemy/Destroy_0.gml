var __b__;
__b__ = action_if_variable(was_removed, false, 0);
if __b__
{
/// Release flower spark
// explosion
instance_create(x, y, objExplosionSpecial);
//part_particles_create(objLevel.particles, x, y, objResources.explosion1, 1);
// flower spark
instance_create(x, y, objFlowerSpark);

}
