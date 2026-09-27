// ============================================================
// Player Animation Definitions
// Replaces timeline-based animation with AnimationSet system
// ============================================================

// ---- Shared speed functions ----

function anim_speed_fixed(owner) {
	return 1;
}

function anim_speed_locomotion(owner) {
	return 1 / max(8 - abs(owner.xspeed), 1);
}

function anim_speed_spin(owner) {
	return 1 / max(5 - abs(owner.xspeed), 1);
}

// ---- Sonic ----

function build_sonic_animations() {
	var _map = ds_map_create();

	var _sfx_brake = function(owner) { play_sfx(sndBrake); };
	var _brake_end = function(owner) {
		if (abs(owner.xspeed) >= 6) owner.animation_new = "run";
		else owner.animation_new = "walk";
	};
	var _flip_end = function(owner) { owner.animation_new = "walk"; };
	var _get_air_end = function(owner) { owner.animation_new = "walk"; };
	var _transform_end = function(owner) { owner.animation_new = "walk"; };
	var _peelout_end = function(owner) { owner.animation_new = "stand"; };
	var _level_start_end = function(owner) { owner.animation_new = "idle"; };
	var _walk_sprite = function(owner) {
		return (abs(owner.xspeed) >= 3.5) ? sprSonicJog : sprSonicWalk;
	};
	var _boarding_fn = function(owner) {
		switch owner.angle {
			case 0: owner.image_index = 0; break;
			case 26: owner.image_index = 2; break;
			case 45: owner.image_index = 3; break;
			case 296: owner.image_index = 4; break;
			case 333: owner.image_index = 2; break;
		}
	};

	// idle
	ds_map_add(_map, "idle", new AnimationSet(sprSonicIdle, [
		new AnimFrame(0, 200), new AnimFrame(1, 10), new AnimFrame(2, 10),
		new AnimFrame(3, 10), new AnimFrame(4, 10)
	], true, anim_speed_fixed, 1));

	// walk
	ds_map_add(_map, "walk", new AnimationSet(undefined, [
		new AnimFrame(0, 1, _walk_sprite), new AnimFrame(1, 1, _walk_sprite),
		new AnimFrame(2, 1, _walk_sprite), new AnimFrame(3, 1, _walk_sprite),
		new AnimFrame(4, 1, _walk_sprite), new AnimFrame(5, 1, _walk_sprite),
		new AnimFrame(6, 1, _walk_sprite), new AnimFrame(7, 1, _walk_sprite)
	], true, anim_speed_locomotion));

	// run
	ds_map_add(_map, "run", new AnimationSet(sprSonicRun, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2), new AnimFrame(3)
	], true, anim_speed_fixed));

	// sprint
	ds_map_add(_map, "sprint", new AnimationSet(sprSonicSprint, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2), new AnimFrame(3)
	], true, anim_speed_fixed));

	// cliff
	ds_map_add(_map, "cliff", new AnimationSet(sprSonicCliff, [
		new AnimFrame(0, 9), new AnimFrame(1, 9), new AnimFrame(2, 8)
	], true, anim_speed_fixed));

	// cliff_b
	ds_map_add(_map, "cliff_b", new AnimationSet(sprSonicCliffB, [
		new AnimFrame(0, 20), new AnimFrame(1, 19)
	], true, anim_speed_fixed));

	// push
	ds_map_add(_map, "push", new AnimationSet(sprSonicPush, [
		new AnimFrame(0, 32), new AnimFrame(1, 32), new AnimFrame(2, 32), new AnimFrame(3, 31)
	], true, anim_speed_fixed));

	// brake
	ds_map_add(_map, "brake", new AnimationSet(sprSonicBrake, [
		new AnimFrame(0, 9, undefined, _sfx_brake), new AnimFrame(1, 9), new AnimFrame(2, 8)
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprSonicLook, [
		new AnimFrame(0, 4), new AnimFrame(1)
	], false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprSonicCrouch, [
		new AnimFrame(0, 6), new AnimFrame(1)
	], false, anim_speed_fixed));

	// spin
	ds_map_add(_map, "spin", new AnimationSet(sprSonicSpin, [
		new AnimFrame(1), new AnimFrame(0), new AnimFrame(2), new AnimFrame(0),
		new AnimFrame(3), new AnimFrame(0), new AnimFrame(4), new AnimFrame(0)
	], true, anim_speed_spin));

	// spindash
	ds_map_add(_map, "spindash", new AnimationSet(sprSonicSpindash, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(0), new AnimFrame(2),
		new AnimFrame(0), new AnimFrame(3), new AnimFrame(0), new AnimFrame(4)
	], true, anim_speed_fixed));

	// peelout
	ds_map_add(_map, "peelout", new AnimationSet(undefined, [
		new AnimFrame(0, 2, sprSonicWalk), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2),
		new AnimFrame(0, 1, sprSonicJog), new AnimFrame(1, 1), new AnimFrame(2, 1),
		new AnimFrame(3, 1), new AnimFrame(4, 1), new AnimFrame(5, 1),
		new AnimFrame(6, 1),
		new AnimFrame(0, 1, sprSonicSprint), new AnimFrame(1, 1),
		new AnimFrame(2, 1), new AnimFrame(3, 1)
	], true, anim_speed_fixed, 14));

	// peelout_end
	ds_map_add(_map, "peelout_end", new AnimationSet(sprSonicWalk, [
		new AnimFrame(7, 2), new AnimFrame(6, 2), new AnimFrame(5, 2),
		new AnimFrame(4, 2), new AnimFrame(3, 2), new AnimFrame(2, 2),
		new AnimFrame(1, 2), new AnimFrame(0, 2)
	], false, anim_speed_fixed, 0, _peelout_end));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprSonicRise, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// flip
	ds_map_add(_map, "flip", new AnimationSet(sprSonicFlip, [
		new AnimFrame(0, 6), new AnimFrame(1, 6), new AnimFrame(2, 6),
		new AnimFrame(3, 6), new AnimFrame(4, 6), new AnimFrame(5, 6),
		new AnimFrame(6, 6), new AnimFrame(7, 6), new AnimFrame(8, 6),
		new AnimFrame(9, 6), new AnimFrame(10, 6), new AnimFrame(11, 6)
	], false, anim_speed_fixed, 0, _flip_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprSonicGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// transform
	ds_map_add(_map, "transform", new AnimationSet(sprSonicTransform, [
		new AnimFrame(0, 6), new AnimFrame(1, 6), new AnimFrame(2, 3),
		new AnimFrame(3, 3), new AnimFrame(4, 3), new AnimFrame(3, 3),
		new AnimFrame(4, 3), new AnimFrame(3, 3), new AnimFrame(4, 3),
		new AnimFrame(3, 3), new AnimFrame(4, 3)
	], false, anim_speed_fixed, 0, _transform_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprSonicRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2)
	], false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprSonicWarp, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprSonicHurt, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprSonicDead, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// drown
	ds_map_add(_map, "drown", new AnimationSet(sprSonicDead, [
		new AnimFrame(2)
	], false, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprSonic3DTurn, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprSonicStandRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2), new AnimFrame(8, 2),
		new AnimFrame(9, 2), new AnimFrame(10, 2), new AnimFrame(11, 2)
	], true, anim_speed_fixed));

	// level_end
	ds_map_add(_map, "level_end", new AnimationSet(sprSonicLevelEnd, [
		new AnimFrame(0, 3), new AnimFrame(1)
	], false, anim_speed_fixed));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprSonicSnowboard, [
		new AnimFrame(0, 4, undefined, _boarding_fn)
	], true, anim_speed_fixed));

	// level_start
	ds_map_add(_map, "level_start", new AnimationSet(sprSonicLevelEnd, [
		new AnimFrame(1, 6)
	], false, anim_speed_fixed, 0, _level_start_end));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprSonicSwing, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprSonicWallRun, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprSonicFloating, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2)
	], true, anim_speed_fixed));

	// drop_dash
	var _dd_frames = array_create(16);
	for (var i = 0; i < 16; i++) _dd_frames[i] = new AnimFrame(i);
	ds_map_add(_map, "drop_dash", new AnimationSet(sprSonicDropDash, _dd_frames, true, anim_speed_fixed));

	return _map;
}

// ---- Tails ----

function build_tails_animations() {
	var _map = ds_map_create();

	var _sfx_brake = function(owner) { play_sfx(sndBrake); };
	var _brake_end = function(owner) {
		if (abs(owner.xspeed) >= 8) owner.animation_new = "sprint";
		else if (abs(owner.xspeed) >= 6) owner.animation_new = "run";
		else owner.animation_new = "walk";
	};
	var _flip_end = function(owner) { owner.animation_new = "walk"; };
	var _get_air_end = function(owner) { owner.animation_new = "walk"; };
	var _level_start_end = function(owner) { owner.animation_new = "idle"; };

	// idle
	ds_map_add(_map, "idle", new AnimationSet(sprTailsIdle, [
		new AnimFrame(0, 80), new AnimFrame(1, 8), new AnimFrame(2, 8),
		new AnimFrame(0, 64), new AnimFrame(1, 8), new AnimFrame(2, 8),
		new AnimFrame(0, 72),
		new AnimFrame(3, 128),
		new AnimFrame(4, 8), new AnimFrame(5, 8), new AnimFrame(6, 8),
		new AnimFrame(5, 8), new AnimFrame(6, 8), new AnimFrame(5, 8),
		new AnimFrame(6, 8), new AnimFrame(5, 8), new AnimFrame(6, 8),
		new AnimFrame(5, 8), new AnimFrame(6, 8), new AnimFrame(4, 8)
	], true, anim_speed_fixed, 7));

	// walk
	ds_map_add(_map, "walk", new AnimationSet(sprTailsWalk, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2), new AnimFrame(3),
		new AnimFrame(4), new AnimFrame(5), new AnimFrame(6), new AnimFrame(7)
	], true, anim_speed_locomotion));

	// run
	ds_map_add(_map, "run", new AnimationSet(sprTailsRun, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2), new AnimFrame(3)
	], true, anim_speed_fixed));

	// sprint
	ds_map_add(_map, "sprint", new AnimationSet(sprTailsRun, [
		new AnimFrame(4, 2), new AnimFrame(5, 2), new AnimFrame(6, 2)
	], true, anim_speed_fixed));

	// cliff
	ds_map_add(_map, "cliff", new AnimationSet(sprTailsCliff, [
		new AnimFrame(0, 20), new AnimFrame(1, 19)
	], true, anim_speed_fixed));

	// push
	ds_map_add(_map, "push", new AnimationSet(sprTailsPush, [
		new AnimFrame(0, 32), new AnimFrame(1, 32), new AnimFrame(2, 32), new AnimFrame(3, 31)
	], true, anim_speed_fixed));

	// brake
	ds_map_add(_map, "brake", new AnimationSet(sprTailsBrake, [
		new AnimFrame(0, 8, undefined, _sfx_brake), new AnimFrame(1, 8)
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprTailsLook, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprTailsCrouch, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// spin
	ds_map_add(_map, "spin", new AnimationSet(sprTailsSpin, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2)
	], true, anim_speed_spin));

	// spindash
	ds_map_add(_map, "spindash", new AnimationSet(sprTailsSpindash, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2)
	], true, anim_speed_fixed));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprTailsRise, [
		new AnimFrame(0, 4), new AnimFrame(1)
	], false, anim_speed_fixed));

	// flip
	ds_map_add(_map, "flip", new AnimationSet(sprTailsFlip, [
		new AnimFrame(0, 6), new AnimFrame(1, 6), new AnimFrame(2, 6),
		new AnimFrame(3, 6), new AnimFrame(4, 6), new AnimFrame(5, 6),
		new AnimFrame(6, 6), new AnimFrame(7, 6), new AnimFrame(8, 6),
		new AnimFrame(9, 6), new AnimFrame(10, 6), new AnimFrame(11, 6)
	], false, anim_speed_fixed, 0, _flip_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprTailsGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprTailsRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2)
	], false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprTailsWarp, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprTailsHurt, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprTailsDead, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// flight
	ds_map_add(_map, "flight", new AnimationSet(sprTailsFlight, [
		new AnimFrame(0)
	], true, anim_speed_fixed));

	// flight_end
	ds_map_add(_map, "flight_end", new AnimationSet(sprTailsFlight, [
		new AnimFrame(1, 12), new AnimFrame(2, 11)
	], true, anim_speed_fixed));

	// swim
	ds_map_add(_map, "swim", new AnimationSet(sprTailsSwim, [
		new AnimFrame(0, 4), new AnimFrame(1, 4), new AnimFrame(2, 4),
		new AnimFrame(3, 4), new AnimFrame(4, 3)
	], true, anim_speed_fixed));

	// swim_end
	ds_map_add(_map, "swim_end", new AnimationSet(sprTailsSwim, [
		new AnimFrame(5, 12), new AnimFrame(6, 12), new AnimFrame(7, 11)
	], true, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprTails3DTurn, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprTailsStandRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2), new AnimFrame(8, 2),
		new AnimFrame(9, 2), new AnimFrame(10, 2), new AnimFrame(11, 2)
	], true, anim_speed_fixed));

	// level_end
	ds_map_add(_map, "level_end", new AnimationSet(sprTailsLevelEnd, [
		new AnimFrame(0, 3), new AnimFrame(1)
	], false, anim_speed_fixed));

	// level_start
	ds_map_add(_map, "level_start", new AnimationSet(sprTailsLevelEnd, [
		new AnimFrame(1, 3), new AnimFrame(0, 3)
	], false, anim_speed_fixed, 0, _level_start_end));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprTailsSnowboard, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprTailsSwing, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprTailsWallRun, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprTailsFloating, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2)
	], true, anim_speed_fixed));

	return _map;
}

// ---- Knuckles ----

function build_knuckles_animations() {
	var _map = ds_map_create();

	var _sfx_brake = function(owner) { play_sfx(sndBrake); };
	var _brake_end = function(owner) {
		if (abs(owner.xspeed) >= 6) owner.animation_new = "run";
		else owner.animation_new = "walk";
	};
	var _flip_end = function(owner) { owner.animation_new = "walk"; };
	var _get_air_end = function(owner) { owner.animation_new = "walk"; };
	var _level_start_end = function(owner) { owner.animation_new = "idle"; };
	var _glide_stand_end = function(owner) { owner.animation_new = "stand"; };
	var _walk_sprite = function(owner) {
		return (abs(owner.xspeed) >= 3.5) ? sprKnucklesJog : sprKnucklesWalk;
	};
	var _glide_step = function(owner) {
		if (abs(owner.glide_angle - 90) > 67.5) owner.image_index = 0;
		else if (abs(owner.glide_angle - 90) > 22.5) owner.image_index = 1;
		else owner.image_index = 2;
	};
	var _climb_speed = function(owner) {
		if !(input_check(cUP) || input_check(cDOWN)) return 0;
		return 0.25;
	};

	// idle
	ds_map_add(_map, "idle", new AnimationSet(sprKnucklesIdle, [
		new AnimFrame(0, 237), new AnimFrame(1, 7), new AnimFrame(2, 7),
		new AnimFrame(3, 9), new AnimFrame(4, 9), new AnimFrame(5, 6),
		new AnimFrame(6, 8), new AnimFrame(7, 8), new AnimFrame(8, 9),
		new AnimFrame(7, 7), new AnimFrame(6, 7), new AnimFrame(5, 9),
		new AnimFrame(4, 8), new AnimFrame(3, 8), new AnimFrame(2, 6),
		new AnimFrame(3, 9), new AnimFrame(4, 9), new AnimFrame(5, 7),
		new AnimFrame(6, 7), new AnimFrame(7, 9), new AnimFrame(8, 9),
		new AnimFrame(7, 6), new AnimFrame(6, 6), new AnimFrame(1, 10),
		new AnimFrame(4, 9), new AnimFrame(3, 7), new AnimFrame(2, 7),
		new AnimFrame(3, 9), new AnimFrame(4, 8), new AnimFrame(5, 8),
		new AnimFrame(6, 6), new AnimFrame(7, 9), new AnimFrame(8, 9),
		new AnimFrame(7, 7), new AnimFrame(6, 7), new AnimFrame(5, 9),
		new AnimFrame(4, 9), new AnimFrame(3, 6), new AnimFrame(2, 18),
		new AnimFrame(5, 18)
	], true, anim_speed_fixed));

	// walk
	ds_map_add(_map, "walk", new AnimationSet(undefined, [
		new AnimFrame(0, 1, _walk_sprite), new AnimFrame(1, 1, _walk_sprite),
		new AnimFrame(2, 1, _walk_sprite), new AnimFrame(3, 1, _walk_sprite),
		new AnimFrame(4, 1, _walk_sprite), new AnimFrame(5, 1, _walk_sprite),
		new AnimFrame(6, 1, _walk_sprite), new AnimFrame(7, 1, _walk_sprite)
	], true, anim_speed_locomotion));

	// run
	ds_map_add(_map, "run", new AnimationSet(sprKnucklesRun, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2), new AnimFrame(3)
	], true, anim_speed_fixed));

	// cliff
	ds_map_add(_map, "cliff", new AnimationSet(sprKnucklesCliff, [
		new AnimFrame(0, 8), new AnimFrame(1, 8), new AnimFrame(2, 8), new AnimFrame(1, 8)
	], true, anim_speed_fixed));

	// cliff_b
	ds_map_add(_map, "cliff_b", new AnimationSet(sprKnucklesCliffB, [
		new AnimFrame(0, 8), new AnimFrame(1, 8), new AnimFrame(2, 8), new AnimFrame(1, 8)
	], true, anim_speed_fixed));

	// push
	ds_map_add(_map, "push", new AnimationSet(sprKnucklesPush, [
		new AnimFrame(0, 8), new AnimFrame(1, 8), new AnimFrame(2, 8), new AnimFrame(3, 7)
	], true, anim_speed_fixed));

	// brake
	ds_map_add(_map, "brake", new AnimationSet(sprKnucklesBrake, [
		new AnimFrame(0, 4, undefined, _sfx_brake), new AnimFrame(1, 4),
		new AnimFrame(2, 4), new AnimFrame(3, 3)
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprKnucklesLook, [
		new AnimFrame(0, 6), new AnimFrame(1)
	], false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprKnucklesCrouch, [
		new AnimFrame(0, 5), new AnimFrame(1)
	], false, anim_speed_fixed));

	// spin
	ds_map_add(_map, "spin", new AnimationSet(sprKnucklesSpin, [
		new AnimFrame(1), new AnimFrame(0), new AnimFrame(2), new AnimFrame(0),
		new AnimFrame(3), new AnimFrame(0), new AnimFrame(4), new AnimFrame(0)
	], true, anim_speed_spin));

	// spindash
	ds_map_add(_map, "spindash", new AnimationSet(sprKnucklesSpindash, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(0), new AnimFrame(2),
		new AnimFrame(0), new AnimFrame(3), new AnimFrame(0), new AnimFrame(4)
	], true, anim_speed_fixed));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprKnucklesRise, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// flip
	ds_map_add(_map, "flip", new AnimationSet(sprKnucklesFlip, [
		new AnimFrame(0, 6), new AnimFrame(1, 6), new AnimFrame(2, 6),
		new AnimFrame(3, 6), new AnimFrame(4, 6), new AnimFrame(5, 6),
		new AnimFrame(6, 6), new AnimFrame(7, 6), new AnimFrame(8, 6),
		new AnimFrame(9, 6), new AnimFrame(10, 6), new AnimFrame(11, 6)
	], false, anim_speed_fixed, 0, _flip_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprKnucklesGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprKnucklesRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2)
	], false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprKnucklesWarp, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprKnucklesHurt, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprKnucklesDead, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// drown
	ds_map_add(_map, "drown", new AnimationSet(sprKnucklesDead, [
		new AnimFrame(1)
	], false, anim_speed_fixed));

	// glide
	ds_map_add(_map, "glide", new AnimationSet(sprKnucklesGlide, [
		new AnimFrame(0)
	], false, anim_speed_fixed, 0, undefined, _glide_step));

	// glide_end
	ds_map_add(_map, "glide_end", new AnimationSet(sprKnucklesGlideFall, [
		new AnimFrame(0, 8), new AnimFrame(1)
	], false, anim_speed_fixed));

	// glide_slide
	ds_map_add(_map, "glide_slide", new AnimationSet(sprKnucklesGlideSlide, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// glide_stand_1
	ds_map_add(_map, "glide_stand_1", new AnimationSet(sprKnucklesCrouch, [
		new AnimFrame(1, 15)
	], false, anim_speed_fixed, 0, _glide_stand_end));

	// glide_stand_2
	ds_map_add(_map, "glide_stand_2", new AnimationSet(sprKnucklesGlideSlide, [
		new AnimFrame(1, 15)
	], false, anim_speed_fixed, 0, _glide_stand_end));

	// climb
	ds_map_add(_map, "climb", new AnimationSet(sprKnucklesClimb, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(2),
		new AnimFrame(3), new AnimFrame(4), new AnimFrame(5)
	], true, _climb_speed));

	// climb_end
	ds_map_add(_map, "climb_end", new AnimationSet(sprKnucklesClamber, [
		new AnimFrame(0, 7), new AnimFrame(1, 6), new AnimFrame(2)
	], false, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprKnuckles3DTurn, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprKnucklesStandRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2), new AnimFrame(8, 2),
		new AnimFrame(9, 2), new AnimFrame(10, 2), new AnimFrame(11, 2)
	], true, anim_speed_fixed));

	// level_end
	ds_map_add(_map, "level_end", new AnimationSet(sprKnucklesLevelEnd, [
		new AnimFrame(0, 3), new AnimFrame(1, 3), new AnimFrame(2, 3),
		new AnimFrame(3, 3), new AnimFrame(5, 3), new AnimFrame(6, 3),
		new AnimFrame(7, 3), new AnimFrame(8)
	], false, anim_speed_fixed));

	// level_start
	ds_map_add(_map, "level_start", new AnimationSet(sprKnucklesLevelEnd, [
		new AnimFrame(8, 2), new AnimFrame(7, 2), new AnimFrame(6, 2),
		new AnimFrame(5, 2), new AnimFrame(4, 2), new AnimFrame(3, 2),
		new AnimFrame(2, 2), new AnimFrame(1, 2), new AnimFrame(0, 2)
	], false, anim_speed_fixed, 0, _level_start_end));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprKnucklesSnowboard, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprKnucklesSwing, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprKnucklesWallRun, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprKnucklesFloating, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2)
	], true, anim_speed_fixed));

	return _map;
}

// ---- Super Sonic ----

function build_super_sonic_animations() {
	var _map = ds_map_create();

	var _sfx_brake = function(owner) { play_sfx(sndBrake); };
	var _brake_end = function(owner) {
		if (abs(owner.xspeed) >= 6) owner.animation_new = "run";
		else owner.animation_new = "walk";
	};
	var _peelout_end = function(owner) { owner.animation_new = "stand"; };
	var _get_air_end = function(owner) { owner.animation_new = "walk"; };
	var _walk_sprite = function(owner) {
		return (abs(owner.xspeed) >= 3.5) ? sprSuperSonicJog : sprSuperSonicWalk;
	};
	var _boarding_fn = function(owner) {
		switch owner.angle {
			case 0: owner.image_index = 0; break;
			case 26: owner.image_index = 2; break;
			case 45: owner.image_index = 3; break;
			case 296: owner.image_index = 4; break;
			case 333: owner.image_index = 2; break;
		}
	};

	// idle
	ds_map_add(_map, "idle", new AnimationSet(sprSuperSonicIdle, [
		new AnimFrame(0, 200), new AnimFrame(1, 10), new AnimFrame(2, 10),
		new AnimFrame(3, 10), new AnimFrame(4, 10)
	], true, anim_speed_fixed, 1));

	// walk
	ds_map_add(_map, "walk", new AnimationSet(undefined, [
		new AnimFrame(0, 1, _walk_sprite), new AnimFrame(1, 1, _walk_sprite),
		new AnimFrame(2, 1, _walk_sprite), new AnimFrame(3, 1, _walk_sprite),
		new AnimFrame(4, 1, _walk_sprite), new AnimFrame(5, 1, _walk_sprite),
		new AnimFrame(6, 1, _walk_sprite), new AnimFrame(7, 1, _walk_sprite)
	], true, anim_speed_locomotion));

	// run
	var _ss_run = new AnimationSet(sprSuperSonicRun, [
		new AnimFrame(0), new AnimFrame(1)
	], true, anim_speed_fixed);
	ds_map_add(_map, "run", _ss_run);

	// sprint (same as run for super sonic)
	ds_map_add(_map, "sprint", _ss_run);

	// cliff
	var _ss_cliff = new AnimationSet(sprSuperSonicCliff, [
		new AnimFrame(0, 10), new AnimFrame(1, 10), new AnimFrame(2, 10), new AnimFrame(1, 9)
	], true, anim_speed_fixed);
	ds_map_add(_map, "cliff", _ss_cliff);

	// cliff_b (same as cliff for super sonic)
	ds_map_add(_map, "cliff_b", _ss_cliff);

	// push
	ds_map_add(_map, "push", new AnimationSet(sprSuperSonicPush, [
		new AnimFrame(0, 32), new AnimFrame(1, 32), new AnimFrame(2, 32), new AnimFrame(3, 31)
	], true, anim_speed_fixed));

	// brake
	ds_map_add(_map, "brake", new AnimationSet(sprSuperSonicBrake, [
		new AnimFrame(0, 9, undefined, _sfx_brake), new AnimFrame(1, 9), new AnimFrame(2, 8)
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprSuperSonicLook, [
		new AnimFrame(0, 4), new AnimFrame(1)
	], false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprSuperSonicCrouch, [
		new AnimFrame(0, 6), new AnimFrame(1)
	], false, anim_speed_fixed));

	// spin
	ds_map_add(_map, "spin", new AnimationSet(sprSuperSonicSpin, [
		new AnimFrame(1), new AnimFrame(0), new AnimFrame(2), new AnimFrame(0),
		new AnimFrame(3), new AnimFrame(0), new AnimFrame(4), new AnimFrame(0)
	], true, anim_speed_spin));

	// spindash
	ds_map_add(_map, "spindash", new AnimationSet(sprSuperSonicSpinDash, [
		new AnimFrame(0), new AnimFrame(1), new AnimFrame(0), new AnimFrame(2),
		new AnimFrame(0), new AnimFrame(3), new AnimFrame(0), new AnimFrame(4)
	], true, anim_speed_fixed));

	// peelout
	ds_map_add(_map, "peelout", new AnimationSet(undefined, [
		new AnimFrame(0, 2, sprSuperSonicWalk), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2),
		new AnimFrame(0, 1, sprSuperSonicWalk), new AnimFrame(1, 1), new AnimFrame(2, 1),
		new AnimFrame(3, 1), new AnimFrame(4, 1), new AnimFrame(5, 1),
		new AnimFrame(6, 1),
		new AnimFrame(0, 1, sprSuperSonicRun), new AnimFrame(1, 1)
	], true, anim_speed_fixed, 14));

	// peelout_end
	ds_map_add(_map, "peelout_end", new AnimationSet(sprSuperSonicWalk, [
		new AnimFrame(7, 2), new AnimFrame(6, 2), new AnimFrame(5, 2),
		new AnimFrame(4, 2), new AnimFrame(3, 2), new AnimFrame(2, 2),
		new AnimFrame(1, 2), new AnimFrame(0, 2)
	], false, anim_speed_fixed, 0, _peelout_end));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprSuperSonicRise, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// flip (reuses Sonic's flip)
	ds_map_add(_map, "flip", new AnimationSet(sprSonicFlip, [
		new AnimFrame(0, 6), new AnimFrame(1, 6), new AnimFrame(2, 6),
		new AnimFrame(3, 6), new AnimFrame(4, 6), new AnimFrame(5, 6),
		new AnimFrame(6, 6), new AnimFrame(7, 6), new AnimFrame(8, 6),
		new AnimFrame(9, 6), new AnimFrame(10, 6), new AnimFrame(11, 6)
	], false, anim_speed_fixed, 0, _get_air_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprSuperSonicGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprSuperSonicRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2)
	], false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprSuperSonicWarp, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprSuperSonicHurt, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprSuperSonicDead, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// drown
	ds_map_add(_map, "drown", new AnimationSet(sprSuperSonicDead, [
		new AnimFrame(2)
	], false, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprSuperSonic3DTurn, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprSuperSonicSnowboard, [
		new AnimFrame(0, 4, undefined, _boarding_fn)
	], true, anim_speed_fixed));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprSuperSonicSwing, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprSuperSonicWallRun, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprSuperSonicFloating, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2)
	], true, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprSuperSonicStandRotate, [
		new AnimFrame(0, 2), new AnimFrame(1, 2), new AnimFrame(2, 2),
		new AnimFrame(3, 2), new AnimFrame(4, 2), new AnimFrame(5, 2),
		new AnimFrame(6, 2), new AnimFrame(7, 2), new AnimFrame(8, 2),
		new AnimFrame(9, 2), new AnimFrame(10, 2), new AnimFrame(11, 2)
	], true, anim_speed_fixed));

	// drop_dash
	var _dd_frames = array_create(16);
	for (var i = 0; i < 16; i++) _dd_frames[i] = new AnimFrame(i);
	ds_map_add(_map, "drop_dash", new AnimationSet(sprSuperSonicDropDash, _dd_frames, true, anim_speed_fixed));

	return _map;
}