/// @description  Release powerup
// broken stand
with instance_create(x, y, objMonitorBroken) {
    image_yscale = other.image_yscale;
    icon = other.icon;
}
// explosion
part_particles_create(objLevel.particles, x, y, objResources.explosion1, 1);

