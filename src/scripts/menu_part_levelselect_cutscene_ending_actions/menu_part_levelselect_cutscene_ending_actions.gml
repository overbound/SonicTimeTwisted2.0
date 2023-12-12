function menu_part_levelselect_cutscene_ending_actions(argument0) {
	switch(argument0)
	{
	    case 0:
	        stop_sound(bgmTitle);
	        audio_stop_all();
	        stop_all_music(true);
	        play_sfx(sndConfirm);
	        // Ending (Bad)
			objProgram.special_future_current_level = 0;
			objProgram.special_past_current_level = 0;
	        menu_fn_close_menu(menu_fn_levelselect_goto_cutscene, false, 17);
	        break;
	    case 1:
	        stop_sound(bgmTitle);
	        audio_stop_all();
	        stop_all_music(true);
	        play_sfx(sndConfirm);
	        // Ending (Time Stones)
			objProgram.special_future_current_level = 0;
			objProgram.special_past_current_level = 7;
	        menu_fn_close_menu(menu_fn_levelselect_goto_cutscene, false, 17);
	        break;
	    case 2:
	        stop_sound(bgmTitle);
	        audio_stop_all();
	        stop_all_music(true);
	        play_sfx(sndConfirm);
	        // Ending (Chaos Emeralds)
			objProgram.special_future_current_level = 7;
			objProgram.special_past_current_level = 0;
	        menu_fn_close_menu(menu_fn_levelselect_goto_cutscene, false, 17);
	        break;
	    case 3:
	        stop_sound(bgmTitle);
	        audio_stop_all();
	        stop_all_music(true);
	        play_sfx(sndConfirm);
	        // Ending (Good)
			objProgram.special_future_current_level = 7;
			objProgram.special_past_current_level = 7;
	        menu_fn_close_menu(menu_fn_levelselect_goto_cutscene, false, 17);
	        break;
	    case 4:
	    case -1:
	        menu_fn_exit_submenu(menu_part_levelselect_cutscene_items, 2);
	        break;
	}

	// preserve the cursor value - usually false for the sake of touchscreen controls
	return false;



}
