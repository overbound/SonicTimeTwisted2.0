function player_reaction_shift_camera_right(argument0) {
	// player_reaction_shift_camera_right
	if camera.right > camera_get_view_x(view_camera[0])+objScreen.width {
	    camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + 2, camera_get_view_y(view_camera[0]));
	} 
	if room_width < camera_get_view_x(view_camera[0])+objScreen.width {
	    camera_set_view_pos(view_camera[0], room_width-objScreen.width, camera_get_view_y(view_camera[0]));
	    with argument0 instance_destroy();
    
	}

	return false;
}
