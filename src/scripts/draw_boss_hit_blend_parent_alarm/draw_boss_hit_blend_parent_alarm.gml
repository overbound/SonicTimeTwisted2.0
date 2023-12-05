function draw_boss_hit_blend_parent_alarm() {
	if parentId.alarm[0] > -1
	{
	    if (objScreen.flashing_visible)
	    {
	        gpu_set_blendmode_ext(10, 1);
	        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	        gpu_set_blendmode(bm_normal);
	    }
	}



}
