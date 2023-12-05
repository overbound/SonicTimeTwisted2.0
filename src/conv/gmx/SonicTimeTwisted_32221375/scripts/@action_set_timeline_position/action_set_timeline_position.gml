/// @description (Old DnD) - set timeline position
/// @param pos  timeline position
var val = argument0;
if (global.__argument_relative) {
	val += timeline_position;
}  // end if
timeline_position = val;
