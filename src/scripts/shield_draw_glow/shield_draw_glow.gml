function shield_draw_glow(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	/*
	argument0 - sprite
	argument1 - subimage
	argument2 - x
	argument3 - y
	argument4 - x scale
	argument5 - y scale
	argument6 - angle
	argument7 - colour
	argument8 - alpha
	*/
	gpu_set_texfilter(true);
	gpu_set_blendmode(bm_add);
	var passes = 6;
	for (var i = 0; i < passes; i++)
	{
		var s = 1.05 + i * 0.06;
		var a = 0.06 * (1 - i / passes) * argument8;
		draw_sprite_ext(argument0, argument1, argument2, argument3, argument4 * s, argument5 * s, argument6, argument7, a);
	}
	gpu_set_blendmode(bm_normal);
	gpu_set_texfilter(objScreen.interpolation);
}
