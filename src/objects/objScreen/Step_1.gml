/// @description  Unpause and handle Alt-Enter
if (not paused) {
    if sprite_exists(screenshot) {
		sprite_delete(screenshot);
	    screenshot = -1;
	}
}


// Alt-Enter isn't here so...
