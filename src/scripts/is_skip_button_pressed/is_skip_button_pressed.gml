function is_skip_button_pressed() {
	return point_in_rectangle(device_mouse_x(0), device_mouse_y(0), 
	        camera_get_view_x(view_camera[0]) + objScreen.width - 28, camera_get_view_y(view_camera[0]) + 4,
	        camera_get_view_x(view_camera[0]) + objScreen.width - 4, camera_get_view_y(view_camera[0]) + 28
	    );
                



}
