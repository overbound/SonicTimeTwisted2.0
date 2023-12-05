if (!was_removed)
{
	/// Release flower spark
	// explosion
	instance_create(x+44, y-28, objExplosionSpecial);
	//part_particles_create(objLevel.particles, x, y, objResources.explosion1, 1);
	// flower spark
	instance_create(x, y, objFlowerSpark);

}
