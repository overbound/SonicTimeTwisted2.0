function player_reaction_xwarp(local_id) {
	// player_reaction_xwarp(local_id)
	x-=local_id.xwarp;
	camera.x-=local_id.xwarp;
	camera_set_view_pos(view_camera[view_current], camera_get_view_x(view_camera[view_current]) - (local_id.xwarp), camera_get_view_y(view_camera[view_current]));
	// hard collision found
	return false;



}
