function level_goto(level_id) {
	// level_goto(level_number)
	var level;
	// advance order
	objProgram.current_level=level_id
	if level_id>=ds_list_size(objProgram.future_list) return false;
	// get current time zone
	if objProgram.in_past level = ds_list_find_value(objProgram.past_list, objProgram.current_level); else
	level = ds_list_find_value(objProgram.future_list, objProgram.current_level);

	// start level
	if objProgram.cutscene>0 transition_to(objFade, level, 24); else
	transition_to(objTitlecard, level, 24);

	return false;
}
