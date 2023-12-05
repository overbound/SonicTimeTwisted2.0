/// @description  transition_to(kind, next_room, frames)
/// @param kind
/// @param  next_room
/// @param  frames
function transition_to(argument0, argument1, argument2) {
	with (instance_create(0, 0, argument0)) {next_room = argument1; image_speed = 1/argument2; return id;}
	return noone;



}
