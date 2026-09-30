/// @description  AnimationSet(sprite, frames, loop, speed_func, [loop_frame], [on_end], [step_callback])
/// @param sprite         Default sprite resource for this animation
/// @param frames         Array of AnimFrame structs
/// @param loop           Whether the animation loops
/// @param speed_func     Function(owner) returning playback speed
/// @param loop_frame     Frame index to loop back to (default 0)
/// @param on_end         Function(owner) called when non-looping animation ends (optional)
/// @param step_callback  Function(owner) called every step for custom logic (optional)
function AnimationSet(_sprite, _frames, _loop, _speed_func, _loop_frame, _on_end, _step_callback) constructor {
	sprite = _sprite;
	frames = _frames;
	loop = _loop;
	speed_func = _speed_func;
	loop_frame = 0;
	on_end = undefined;
	step_callback = undefined;
	if (!is_undefined(_loop_frame)) loop_frame = _loop_frame;
	if (!is_undefined(_on_end)) on_end = _on_end;
	if (!is_undefined(_step_callback)) step_callback = _step_callback;
}