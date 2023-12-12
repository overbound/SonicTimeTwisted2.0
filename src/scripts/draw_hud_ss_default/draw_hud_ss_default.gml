function draw_hud_ss_default() {
	var pbOffsetX = ((objScreen.width / 2) - ((objScreen.width / 2) - 128));
	if(objProgram.saveSlot > -2) // if we are playing this in the mini-game/level select mode, lives don't appear
	{
	    draw_lives(16, objScreen.height-24);
	    draw_shield_ss((objScreen.width / 2), 24-(16*objScreen.split_screen), objProgram.temp_shield);
	}
	else
	{
	    pbOffsetX = ((objScreen.width / 2) - ((objScreen.width / 2) - 72));;
	}
	// Progress bar
	draw_ss_progress_bar(pbOffsetX, objScreen.height-16, pbOffsetX);




}
