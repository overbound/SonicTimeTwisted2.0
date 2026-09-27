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
	if (argument_count > 1) duration = _duration;
	if (argument_count > 2) sprite = _sprite;
	if (argument_count > 3) callback = _callback;
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
function AnimFrames(_image_indices, _duration, _sprite, _callback) {
	var _len = array_length(_image_indices);
	var _frames = array_create(_len);
	var _dur = 1;
	var _spr = undefined;
	var _cb = undefined;
	if (argument_count > 1) _dur = _duration;
	if (argument_count > 2) _spr = _sprite;
	if (argument_count > 3) _cb = _callback;
	var _dur_is_array = is_array(_dur);
	var _has_sprite = !is_undefined(_spr);
	var _has_callback = !is_undefined(_cb);

	for (var i = 0; i < _len; i++) {
		var _d = _dur_is_array ? _dur[i] : _dur;
		if (_has_sprite && _has_callback) {
			_frames[i] = new AnimFrame(_image_indices[i], _d, _spr, _cb);
		} else if (_has_sprite) {
			_frames[i] = new AnimFrame(_image_indices[i], _d, _spr);
		} else if (_has_callback) {
			_frames[i] = new AnimFrame(_image_indices[i], _d, undefined, _cb);
		} else {
			_frames[i] = new AnimFrame(_image_indices[i], _d);
		}
	}
	return _frames;
}