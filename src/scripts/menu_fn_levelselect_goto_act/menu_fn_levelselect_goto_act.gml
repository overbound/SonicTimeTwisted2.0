/// @description  menu_fn_levelselect_goto_act(inPast, currentLevel)
/// @param inPast
/// @param  currentLevel
function menu_fn_levelselect_goto_act(inPast, currentLevel) {
	objProgram.saveSlot = -1;
	ds_map_clear(objProgram.no_save_data);
	objProgram.in_past = inPast;
	objProgram.current_level = currentLevel;

	if(objProgram.current_level == 0)
	{
	    // AAZ Act 1 is on index 0. If this isn't set to -1, level_goto_next() will
	    // set it to 1, leading to the Metal Sonic cutscene instead of AAZ Act 1
	    objProgram.current_level = -1;
	}
	if(objProgram.in_past)
	{
	    show_debug_message("PAST "+string(objProgram.current_level));
	}
	else
	{
	    show_debug_message("FUTURE "+string(objProgram.current_level));
	}


	level_goto_next();



}
