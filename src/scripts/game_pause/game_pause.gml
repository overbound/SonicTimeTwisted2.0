/// @description  game_pause(pause?)
/// @param pause?
function game_pause(has_paused) {
	with(objScreen) 
	{
		image_speed = !has_paused; 
		paused = has_paused; 
	}
	
	with(objLevel)
	{
		part_system_automatic_update(particles, !has_paused);
	}
	
	if(has_paused == false)
	{
	    instance_activate_object(objSceneObject);
	    audio_resume_all();
	    game_unpause_events();
	}
	else
	{
	    with (objScreen)
	    {
			if (sprite_exists(screenshot)) sprite_delete(screenshot);
			screenshot = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
	    }
	    instance_deactivate_object(objSceneObject);
	    audio_pause_all();
	}
	
	if(has_paused) 
	{
	    with (objInput) 
		{
	        analog_enabled = false;
	    }
	}




}
