/// @description (Old DnD) - set hspeed
/// @param val value to set hspeed
var val = argument0;
if (global.__argument_relative) {
	val += hspeed;
}  // end if
hspeed = val;
