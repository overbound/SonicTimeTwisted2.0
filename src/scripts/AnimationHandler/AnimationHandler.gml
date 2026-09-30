/// @description  AnimationHandler(owner)
/// @param owner  The object instance that owns this handler
function AnimationHandler(_owner) constructor {
	owner = _owner;
	current_anim = undefined;
	frame_index = 0;
	frame_counter = 0;
	timeline_pos = 0;
	ended = false;
	frozen = false;
	freeze_frames = 0;

	/// @description  Change to a new animation
	/// @param anim  AnimationSet to play
	static change_anim = function(_anim) {
		if (current_anim == _anim && !owner.animation_reset) return;
		current_anim = _anim;
		frame_index = 0;
		frame_counter = 0;
		timeline_pos = 0;
		ended = false;
		owner.animation_reset = false;
		apply_frame();
	}

	/// @description  Advance animation each step
	static step = function() {
		if (frozen) {
			freeze_frames--;
			if (freeze_frames <= 0) frozen = false;
			return;
		}
		if (current_anim == undefined) return;

		// run step callback for custom per-frame logic
		if (current_anim.step_callback != undefined) {
			current_anim.step_callback(owner);
		}

		if (ended) return;

		var _speed = current_anim.speed_func(owner);
		if (_speed <= 0) return;

		var _len = array_length(current_anim.frames);
		if (_len == 0) return;

		// clamp frame_index in case something went wrong
		if (frame_index < 0 || frame_index >= _len) {
			frame_index = 0;
		}

		frame_counter += _speed;
		timeline_pos += _speed;

		var _dur = current_anim.frames[frame_index].duration;
		while (frame_counter >= _dur) {
			frame_counter -= _dur;
			frame_index++;

			if (frame_index >= _len) {
				if (current_anim.loop) {
					frame_index = clamp(current_anim.loop_frame, 0, _len - 1);
				} else {
					ended = true;
					frame_index = _len - 1;
					apply_frame();
					if (current_anim.on_end != undefined) {
						current_anim.on_end(owner);
					}
					return;
				}
			}
			_dur = current_anim.frames[frame_index].duration;
		}
		apply_frame();
	}

	/// @description  Write sprite_index and image_index to the owner
	/// Also syncs timeline_position for backward compatibility with
	/// external code (e.g. objTimePost) that reads it.
	static apply_frame = function() {
		if (current_anim == undefined) return;
		var _frame = current_anim.frames[frame_index];

		// determine sprite
		var _spr = current_anim.sprite;
		if (_frame.sprite != undefined) {
			if (is_callable(_frame.sprite)) {
				_spr = _frame.sprite(owner);
			} else {
				_spr = _frame.sprite;
			}
		}
		if (_spr != undefined) {
			owner.sprite_index = _spr;
		}
		owner.image_index = _frame.image_index;

		// sync timeline_position for external readers (e.g. objTimePost)
		// mirrors original timeline behavior: accumulates speed each step
		owner.timeline_position = timeline_pos;

		// run callback
		if (_frame.callback != undefined) {
			_frame.callback(owner);
		}
	}

	/// @description  Freeze animation for hitstop
	/// @param num_frames  Number of steps to freeze
	static freeze = function(_num_frames) {
		frozen = true;
		freeze_frames = _num_frames;
	}
}