function get_mouse_y_with_scale() {
	var my = mouse_y;
	// handle the cases when integer scaling is used
	with(objScreen) {
	    if (video_mode > 0) {
	        my = __view_get( e__VW.YView, 0 ) + (my - __view_get( e__VW.YView, 0 ) - height*(1 - (video_mode/full_scale))/2)*(full_scale/video_mode);
	    }
	}
	return my;



}
