function shield_draw_glow(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {
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
	argument9 - glow intensity multiplier
	argument10 - max halo scale (defaults to 1.2)
	*/
	// Soft glow by draw-time blur: every scale pass draws the sprite as a
	// spiral of low-alpha copies spread over a small disc, so each sharp
	// pixel smears into a haze instead of stacking into points of light
	gpu_set_texfilter(true);
	gpu_set_blendmode(bm_add);
	var passes = 8;
	var taps = 24;
	var blur_r = 6;
	var max_scale = 1.2;
	if (!is_undefined(argument10)) max_scale = argument10;
	for (var i = 0; i < passes; i++)
	{
		var s = 1.05 + i * (max_scale - 1.05) / (passes - 1);
		var a = 0.30 * (1 - i / passes) * argument8 * argument9 / taps;
		for (var t = 0; t < taps; t++)
		{
			var r = blur_r * sqrt(t / taps);
			var th = t * 2.39996323 + i * 1.7;
			var ox = r * cos(th);
			var oy = r * sin(th);
			draw_sprite_ext(argument0, argument1, argument2 + ox, argument3 + oy, argument4 * s, argument5 * s, argument6, argument7, a);
		}
	}
	gpu_set_blendmode(bm_normal);
	gpu_set_texfilter(objScreen.interpolation);
}
