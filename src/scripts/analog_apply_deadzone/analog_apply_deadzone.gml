/// @description  analog_apply_deadzones(value)
/// @param value
function analog_apply_deadzone(argument0) {
	var sgn = sign(argument0);
	return sgn*clamp(((abs(argument0) - analog_deadzone_min)/(analog_deadzone_max - analog_deadzone_min)), 0.0, 1.0);



}
