/// @description (Old DnD) - set gravity
/// @param dir direction for gravity
/// @param val value to set gravity
function action_set_gravity(argument0, argument1) {
	var dir = argument0;
	var val = argument1;
	if (global.__argument_relative) {
		dir += gravity_direction;
		val += gravity;
	}  // end if
	gravity = val;
	gravity_direction = dir;



}
