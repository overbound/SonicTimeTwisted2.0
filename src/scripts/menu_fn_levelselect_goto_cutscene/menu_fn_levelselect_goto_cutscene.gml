/// @description  menu_fn_levelselect_goto_cutscene(inPast, currentCutscene)
/// @param inPast
/// @param  currentLevel
function menu_fn_levelselect_goto_cutscene(inPast, currentCutscene) {
	objProgram.saveSlot = -1;
	ds_map_clear(objProgram.no_save_data);
	objProgram.in_past = inPast;

	if(objProgram.in_past)
	{
	    show_debug_message("PAST "+string(objProgram.current_level));
	}
	else
	{
	    show_debug_message("FUTURE "+string(objProgram.current_level));
	}


	cutscene_goto(currentCutscene);

}
