/// @description  AnimFrame(image_index, [duration], [sprite], [callback])
/// @param image_index  Frame index within the sprite
/// @param duration     How many steps to hold this frame at speed=1 (default 1)
/// @param sprite       Override sprite resource or function(owner)->sprite (optional)
/// @param callback     Function(owner) called when frame starts (optional)
function AnimFrame(_image_index, _duration, _sprite, _callback) constructor {
	image_index = _image_index;
	duration = 1;
	sprite = undefined;
	callback = undefined;
	if (!is_undefined(_duration)) duration = _duration;
	if (!is_undefined(_sprite)) sprite = _sprite;
	if (!is_undefined(_callback)) callback = _callback;
}