function shield_draw_glow(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	/*
	argument0 - sprite
	argument1 - subimage (ignored - the glow uses a pre-blurred copy of frame 0)
	argument2 - x
	argument3 - y
	argument4 - x scale
	argument5 - y scale
	argument6 - angle
	argument7 - colour
	argument8 - alpha
	argument9 - glow intensity multiplier
	*/
	// Bake a blurred copy of the sprite once and cache it: stacking scaled copies
	// of a sharp sprite reads as points of light, a blurred source reads as a glow
	if (!variable_global_exists("shield_glow_blurs"))
	{
		global.shield_glow_blurs = ds_map_create();
	}
	var glow_spr = argument0;
	if (ds_map_exists(global.shield_glow_blurs, argument0))
	{
		glow_spr = global.shield_glow_blurs[? argument0];
	}
	else
	{
		var bw = sprite_get_width(argument0);
		var bh = sprite_get_height(argument0);
		var bx = sprite_get_xoffset(argument0);
		var by = sprite_get_yoffset(argument0);
		var br = 6;
		var s_src = surface_create(bw + 2 * br, bh + 2 * br);
		var s_dst = surface_create(bw + 2 * br, bh + 2 * br);
		var dy, dx, d2, tap_sum, tap_k;
		if (s_src != -1 && s_dst != -1)
		{
			gpu_set_blendmode(bm_normal);
			surface_set_target(s_src);
			draw_clear_alpha(c_black, 0);
			draw_sprite_ext(argument0, 0, bx + br, by + br, 1, 1, 0, c_white, 1);
			surface_reset_target();
			// center-weighted disc taps: smears every sharp pixel into a soft cloud
			tap_sum = 0;
			for (dy = -br; dy <= br; dy++)
			{
				for (dx = -br; dx <= br; dx++)
				{
					d2 = dx * dx + dy * dy;
					if (d2 <= br * br) tap_sum += 1 - sqrt(d2) / br;
				}
			}
			tap_k = 1.9 / tap_sum;
			surface_set_target(s_dst);
			draw_clear_alpha(c_black, 0);
			for (dy = -br; dy <= br; dy++)
			{
				for (dx = -br; dx <= br; dx++)
				{
					d2 = dx * dx + dy * dy;
					if (d2 <= br * br)
					{
						draw_surface_ext(s_src, dx, dy, 1, 1, 0, c_white, tap_k * (1 - sqrt(d2) / br));
					}
				}
			}
			surface_reset_target();
			glow_spr = sprite_create_from_surface(s_dst, 0, 0, bw + 2 * br, bh + 2 * br, false, true, bx + br, by + br);
			global.shield_glow_blurs[? argument0] = glow_spr;
		}
		if (s_src != -1) surface_free(s_src);
		if (s_dst != -1) surface_free(s_dst);
	}
	gpu_set_texfilter(true);
	gpu_set_blendmode(bm_add);
	var passes = 8;
	for (var i = 0; i < passes; i++)
	{
		var s = 1.05 + i * 0.07;
		var a = 0.10 * (1 - i / passes) * argument8 * argument9;
		draw_sprite_ext(glow_spr, 0, argument2, argument3, argument4 * s, argument5 * s, argument6, argument7, a);
	}
	gpu_set_blendmode(bm_normal);
	gpu_set_texfilter(objScreen.interpolation);
}
