function draw_hud_ss_default() {
	var pbOffsetX = 128;
	if(objProgram.saveSlot > -2) // if we are playing this in the mini-game/level select mode, lives don't appear
	{
	    draw_lives(16, __view_get( e__VW.HView, 0 )-24);
	    draw_shield_ss(213, 24-(16*objScreen.split_screen), objProgram.temp_shield);
	}
	else
	{
	    pbOffsetX = 72;
	}
	// Progress bar
	draw_ss_progress_bar(pbOffsetX, 224, pbOffsetX);




}
