function change_aspect_ratio(_ratioType){

	if(_ratioType == true)
	{
		width = 320;
		height = 240;
	}
	else
	{
		width = 426;
		height = 240;
	}

	alarm[0] = center_delay;
	view_enabled = true;
	view_set_visible(view_current, true);
	camera_set_view_size(view_camera[view_current], width, height);
	view_set_wport(view_current, width);
	view_set_hport(view_current, height);
	
	if(objProgram.device_info & DEVICE_TYPE_SMARTPHONE)
	{
	    // calculating what the definition would be if the game used the entire screen
	    // first, the most common case: if the screen is of an aspect ratio larger than the game's native one
	    var calculated_width = width;
	    if(os_type == os_android)
	    {
	        if(display_get_orientation() == display_portrait
	            || display_get_orientation() == display_portrait_flipped)
	        {
	            calculated_width = round(height * (display_get_height()/display_get_width()));
	        }
	        else
	        {
	            calculated_width = round(height * (display_get_width()/display_get_height()));
	        }
	        if(calculated_width mod 2)
	        {
	            calculated_width--;
	        }
	    }
	    var maxgui_xscale, maxgui_yscale;
	    if (calculated_width >= width)
	    {    
	        // if the device's screen is wide enough, then this works
	        maxgui_xscale = display_get_width()/calculated_width;
	        maxgui_yscale = display_get_height()/height;
	        var maxgui_xoffset = maxgui_xscale*(calculated_width - width)/2;
        
	        display_set_gui_size(calculated_width, height);
	        display_set_gui_maximise(maxgui_xscale, maxgui_yscale, maxgui_xoffset, 0);
        
	        gui_width = calculated_width;
	        gui_height = height;
	    }
	    else
	    {
	        // if the device's screen is not wide enough, then restart everything:
	        // the width should be the fixed valuee, the height must be the recalculated instead
	        var calculated_height = height;
	        if(os_type == os_android)
	        {
	            if(display_get_orientation() == display_portrait
	                || display_get_orientation() == display_portrait_flipped)
	            {
	                calculated_height = round(width * (display_get_width()/display_get_height()));
	            }
	            else
	            {
	                calculated_height = round(width * (display_get_height()/display_get_width()));
	            }
	            if(calculated_height mod 2)
	            {
	                calculated_height--;
	            }
	        }
        
	        maxgui_xscale = display_get_width()/width;
	        maxgui_yscale = display_get_height()/calculated_height;
	        var maxgui_yoffset = maxgui_yscale*(calculated_height - height)/2;
        
	        display_set_gui_size(width, calculated_height);
	        display_set_gui_maximise(maxgui_xscale, maxgui_yscale, 0, maxgui_yoffset);    
        
	        gui_width = width;
	        gui_height = calculated_height;
        
	    }
	}
	else
	{
	    display_set_gui_size(width, height);
	    gui_width = width;
	    gui_height = height;
	}

	surface_resize(application_surface, width, height); /* set up the app surf */
	
	/**
	Set initial max scale
	**/
	event_user(3);
	window_set_size(width * window_scale, height * window_scale);
}