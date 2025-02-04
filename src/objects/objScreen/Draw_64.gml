/// @description Draw Scanlines
	
	if scanlines
	{
	    // draw the game with a scanline filter.
		// (NOTE: This was a remnant of the game's original framework, if need be, it can be added back. Like this code below.)
		draw_sprite_ext(sprScanlines, 0, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), width, height, 0, c_white, 1);
	}