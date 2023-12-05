/// @description (Old DnD) - set timeline speed
/// @param val timeline speed
function action_set_timeline_speed(argument0) {
	var val = argument0;
	if (global.__argument_relative) {
		val += timeline_speed;
	}  // end if
	timeline_speed = val;



}
