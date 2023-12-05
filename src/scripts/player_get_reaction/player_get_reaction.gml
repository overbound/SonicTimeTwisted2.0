function player_get_reaction(argument0, argument1) {
	// player_get_reaction(local_id, code)
	if argument0.reaction_script < 0 return false;
	var _script = argument0.reaction_script;
	var _result = script_execute(argument0.reaction_script, argument0, argument1);
	// TODO remove this once everything works!
	if (!is_bool(_result)) {
		show_debug_message("UNDEFINED RETURNED");
		show_debug_message(script_get_name(_script));
		show_debug_message(_result );
	}
	return _result;
}
