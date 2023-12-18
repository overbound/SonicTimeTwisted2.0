function player_state_reset() {
	// player_state_reset()
	var ox, oy;
	// define center offset
	ox = x-(camera_get_view_x(view_camera[camera.view_id])+camera_get_view_width(view_camera[camera.view_id])*0.5);
	oy = y-(camera_get_view_y(view_camera[camera.view_id])+camera_get_view_height(view_camera[camera.view_id])*0.5);
	// continue when camera catches up
	if (abs(ox)<=8) and (abs(oy)==0) state = player_state_fall;



}
