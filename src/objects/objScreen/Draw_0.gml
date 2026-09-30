/// @description  Screenshot
//if(aspect_mode == aspect_mode)
//{
	//if !instance_exists(objSSHud)
	if screenshot > -1 and sprite_exists(screenshot)
	{
	    gpu_set_blendenable(false);
		draw_sprite_stretched_ext(screenshot, 0, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), width, height, c_white, 1);
		gpu_set_blendenable(true);
	}
//}
