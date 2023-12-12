function cutscene_goto(cutscene_id) {
	// level_goto(level_number)
	var level;
	// advance order
	objProgram.current_level=cutscene_id
	if cutscene_id>=ds_list_size(objProgram.future_list) return false;
	// get current time zone
	if objProgram.in_past level = ds_list_find_value(objProgram.past_list, objProgram.current_level); else
	level = ds_list_find_value(objProgram.future_list, objProgram.current_level);

	// start level
	transition_to(objFade, level, 24);

	return false;
}
