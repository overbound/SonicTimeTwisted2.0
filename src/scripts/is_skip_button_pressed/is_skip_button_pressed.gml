function is_skip_button_pressed() {
	return point_in_rectangle(device_mouse_x(0), device_mouse_y(0), 
	        __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 28, __view_get( e__VW.YView, 0 ) + 4,
	        __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 4, __view_get( e__VW.YView, 0 ) + 28
	    );
                



}
