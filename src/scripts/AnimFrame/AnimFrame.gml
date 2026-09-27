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

/// @description  AnimFrames(image_indices, [duration], [sprite], [callback])
/// Shorthand to create multiple AnimFrame structs at once.
/// @param image_indices  Array of image_index values, e.g. [0, 1, 2, 3]
/// @param duration       Number or array of durations (default 1)
///                       - Single number: same duration for all frames
///                       - Array: per-frame durations, e.g. [9, 9, 8]
/// @param sprite         Override sprite for all frames (optional)
/// @param callback       Callback for all frames (optional)
/// @return {Array}       Array of AnimFrame structs
function AnimFrames() {
	var _indices = argument[0];
	var _dur = 1;
	var _spr = undefined;
	var _cb = undefined;
	if (argument_count > 1) _dur = argument[1];
	if (argument_count > 2) _spr = argument[2];
	if (argument_count > 3) _cb = argument[3];

	var _len = array_length(_indices);
	var _frames = array_create(_len);
	var _dur_is_array = is_array(_dur);

	for (var i = 0; i < _len; i++) {
		var _d = _dur_is_array ? _dur[i] : _dur;
		_frames[i] = new AnimFrame(_indices[i], _d, _spr, _cb);
	}
	return _frames;
}