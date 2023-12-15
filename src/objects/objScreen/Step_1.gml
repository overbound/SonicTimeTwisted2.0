/// @description  Unpause and handle Alt-Enter
if (not paused) {
    if sprite_exists(screenshot) {
		sprite_delete(screenshot);
	    screenshot = -1;
	} else if sprite_exists(pause_bg) {
		pause_bg = -1;
	}
}


// Alt-Enter isn't here so...
if(paused) {
	if(((sprite_exists(screenshot) && sprite_get_width(screenshot) == 426) || (sprite_exists(pause_bg) && sprite_get_width(pause_bg) == 426)) && width == 320)
	{
		if(sprite_exists(screenshot)){
			sprite_delete(screenshot);
			screenshot = -1;
		}
		pause_bg = sprPause320;
	}
	else if(((sprite_exists(screenshot) && sprite_get_width(screenshot) == 320) || (sprite_exists(pause_bg) && sprite_get_width(pause_bg) == 320)) && width == 426)
	{
		if(sprite_exists(screenshot)){
			sprite_delete(screenshot);
			screenshot = -1;
		}
		pause_bg = sprPause426;
	}
}