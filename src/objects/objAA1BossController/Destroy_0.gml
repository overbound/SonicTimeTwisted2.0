if (!was_removed)
{
	/// Start level
	// replace background
	with background instance_destroy();
	with objParallax instance_destroy();
	if objProgram.in_past
		instance_create(0, 0, objAAPastBack);
	else instance_create(0, 0, objAAFutureBack);
	stop_sound(bgmMetalSonicIntro);
	stop_sound(bgmMetalSonicLoop);
	remove=0;

}
