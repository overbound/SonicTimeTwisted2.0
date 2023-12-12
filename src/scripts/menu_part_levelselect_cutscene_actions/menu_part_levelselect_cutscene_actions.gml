function menu_part_levelselect_cutscene_actions(argument0) {
	switch(argument0)
	{
	    case 0:
	        stop_sound(bgmTitle);
	        audio_stop_all();
	        stop_all_music(true);
	        play_sfx(sndConfirm);
	        // Intro - Future
	        menu_fn_close_menu(menu_fn_levelselect_goto_cutscene, false, 1);
	        break;
	    case 1:
	        stop_sound(bgmTitle);
	        audio_stop_all();
	        stop_all_music(true);
	        play_sfx(sndConfirm);
	        // Intro - Past
	        menu_fn_close_menu(menu_fn_levelselect_goto_cutscene, true, 1);
	        break;
	    case 2:
	        // Ending
	        menu_fn_goto_submenu(menu_part_levelselect_cutscene_ending_items);
	        break;
	    case 3:
	    case -1:
	        menu_fn_exit_submenu(menu_part_levelselect_items, 10);
	        break;
	}

	// preserve the cursor value - usually false for the sake of touchscreen controls
	return false;



}
