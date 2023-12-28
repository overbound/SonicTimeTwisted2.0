function draw_ss_progress_bar(bar_offset_x, bar_offset_y, start_offset_x) {

	draw_set_alpha(0.25);
	draw_set_color(c_white);
	draw_line_width(bar_offset_x, bar_offset_y, bar_offset_x+(objScreen.width - 144), bar_offset_y, 4);
	draw_set_alpha(1);

	var xmetalprog = start_offset_x + objSSMetalSonic.progress * (objScreen.width - 146);
	if metalProgDisplay > xmetalprog +2{
	    metalProgDisplay-=2;
	}
	else if metalProgDisplay < xmetalprog -2 {
	    metalProgDisplay+=2;
	}

	var xplayerprog = start_offset_x + objSSPlayer.progress * (objScreen.width - 146);
	if playerProgDisplay > xplayerprog +2{
	    playerProgDisplay-=2;
	}
	else if playerProgDisplay < xplayerprog -2{
	    playerProgDisplay+=2;
	}
	draw_sprite_ext(sprRacerIcon, 3, bar_offset_x + objSSMetalSonic.progress * (objScreen.width - 146), bar_offset_y, 1, 1, 0, c_white, 1);
	draw_sprite(sprRacerIcon, objGameData.character_id[0]-1, bar_offset_x + objSSPlayer.progress * (objScreen.width - 146), bar_offset_y);



}
