function move_view_to_center(argument0) {
	//move_view_to_center(offset)
	return x>=__view_get( e__VW.XView, 0 )+argument0 and y>=__view_get( e__VW.YView, 0 )+argument0 and
	x<__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-argument0 and
	y<__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-argument0;
	 /*   if view_xview + view_wview*.5 > view_xview -offset
	        view_xview-=2;
	    if view_xview + view_wview*.5 < view_xview +offset
	        view_xview+=2;
	    if view_yview + view_hview*.5 > view_yview -offset
	        view_yview-=2;
	    if view_yview + view_hview*.5 < view_yview +offset
	        view_yview+=2;*/
        
        



}
