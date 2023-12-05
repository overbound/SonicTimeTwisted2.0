/// @description (Old DnD) - set hspeed
/// @param val value to set hspeed
function action_set_hspeed(argument0) {
	var val = argument0;
	if (global.__argument_relative) {
		val += hspeed;
	}  // end if
	hspeed = val;



}
