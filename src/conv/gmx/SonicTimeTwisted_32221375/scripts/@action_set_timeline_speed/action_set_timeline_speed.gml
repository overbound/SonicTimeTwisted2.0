/// @description (Old DnD) - set timeline speed
/// @param val timeline speed
var val = argument0;
if (global.__argument_relative) {
	val += timeline_speed;
}  // end if
timeline_speed = val;
