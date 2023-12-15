/// @description  Screenshot and scanlines
//if(aspect_mode == aspect_mode)
//{
	if !instance_exists(objSSHud)
	{
	    gpu_set_blendenable(false);
		if sprite_exists(screenshot) {
			draw_sprite_stretched_ext(screenshot, 0, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), width, height, c_white, 1);
		} else if sprite_exists(pause_bg) {
			draw_sprite_stretched_ext(pause_bg, 0, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), width, height, c_white, 1);
		}
		gpu_set_blendenable(true);
	}
	else if scanlines
	{
	    // draw the screenshot with a scanline shader?
	}
//}
