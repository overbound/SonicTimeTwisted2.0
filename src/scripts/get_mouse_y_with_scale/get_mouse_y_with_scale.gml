function get_mouse_y_with_scale() {
	var _my = mouse_y;
	// handle the cases when integer scaling is used
	with(objScreen) {
	    if (video_mode > 0) {
	        _my = camera_get_view_y(view_camera[0]) + (_my - camera_get_view_y(view_camera[0]) - height*(1 - (video_mode/full_scale))/2)*(full_scale/video_mode);
	    }
	}
	return _my;
}
