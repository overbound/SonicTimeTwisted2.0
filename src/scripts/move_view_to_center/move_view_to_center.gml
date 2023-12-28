function move_view_to_center(_offset) {
	//move_view_to_center(offset)
	return x>=camera_get_view_x(view_camera[0])+_offset and y>=camera_get_view_y(view_camera[view_current])+_offset and
	x<camera_get_view_x(view_camera[0])+objScreen.width-_offset and
	y<camera_get_view_y(view_camera[view_current])+objScreen.height-_offset;
	 /*   if view_xview + view_wview*.5 > view_xview -offset
	        view_xview-=2;
	    if view_xview + view_wview*.5 < view_xview +offset
	        view_xview+=2;
	    if view_yview + view_hview*.5 > view_yview -offset
	        view_yview-=2;
	    if view_yview + view_hview*.5 < view_yview +offset
	        view_yview+=2;*/
        
        



}
