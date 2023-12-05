function draw_boss_hit_blend() {
	var alarm_number = 0;
	if(argument_count > 0)
	{
	    alarm_number = argument[0];
	}
	if alarm[alarm_number] > -1
	{
	    if (objScreen.flashing_visible)
	    {
	        gpu_set_blendmode_ext(10, 1);
	        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	        gpu_set_blendmode(bm_normal);
	    }
	}



}
