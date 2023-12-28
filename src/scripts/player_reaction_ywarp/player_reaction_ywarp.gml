function player_reaction_ywarp(local_id) {
	// player_reaction_ywarp(local_id)
	y-=local_id.ywarp;
	camera.y-=local_id.ywarp;
	camera_set_view_pos(view_camera[view_current], camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]) - (local_id.ywarp) );
	// hard collision found
	return false;



}
