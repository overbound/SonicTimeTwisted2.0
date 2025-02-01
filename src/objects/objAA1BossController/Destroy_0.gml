if (!was_removed)
{
	/// Start level
	// replace background
	with background instance_destroy();
	with objParallax instance_destroy();
	instance_create_depth(0, 0, 1, objProgram.in_past ? objAAPastBack : objAAFutureBack);
	//TODO: replace this shit
	stop_sound(bgmMetalSonicIntro);
	stop_sound(bgmMetalSonicLoop);
	remove=0;

}
