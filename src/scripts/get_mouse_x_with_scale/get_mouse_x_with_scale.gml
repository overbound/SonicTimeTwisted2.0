function get_mouse_x_with_scale() {
	var mx = mouse_x;
	// handle the cases when integer scaling is used
	with(objScreen) {
	    if (video_mode > 0) {
	        mx = camera_get_view_x(view_camera[0]) + (mx - camera_get_view_x(view_camera[0]) - width*(1 - (video_mode/full_scale))/2)*(full_scale/video_mode);
	    }
	}
	return mx;



}
