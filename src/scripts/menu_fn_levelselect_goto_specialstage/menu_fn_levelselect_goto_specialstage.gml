/// @description  menu_fn_levelselect_goto_specialstage(inPast, currentLevel)
/// @param inPast
/// @param  currentLevel
function menu_fn_levelselect_goto_specialstage(inPast, currentLevel) {

	// -2 is a special mode in which one Special Stage is played at a time
	objProgram.saveSlot = -2;
	ds_map_clear(objProgram.no_save_data);
	var special_level;
	if(inPast)
	{
	    objProgram.in_past = true;
	    special_level = ds_list_find_value(objProgram.special_past_list, currentLevel);
	    objProgram.special_past_current_level = currentLevel;
	}
	else
	{
	    objProgram.in_past = false;
	    special_level = ds_list_find_value(objProgram.special_future_list, currentLevel);
	    objProgram.special_future_current_level = currentLevel;
	}
	stop_all_music(false);
	stop_all_music(false, true);
	transition_to(objLevelToSS, special_level, 20);
	global.special_level_music_played = false;



}
