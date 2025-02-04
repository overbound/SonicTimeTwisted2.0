/// @description  transition_to(kind, next_room, frames)
/// @param kind
/// @param  next_room
/// @param  frames
function transition_to(kind = objFade, _next_room, frames_to_go) {
	with(instance_create(0, 0, kind)) 
	{
		next_room = _next_room; 
		image_speed = 1/frames_to_go; 
		return id;
	}
	return noone;



}
