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

	// idle — long delay before foot tap, then loop from frame 1
	ds_map_add(_map, "idle", new AnimationSet(sprSonicIdle, [
		new AnimFrame(0, 200), AnimFrames([1, 2, 3, 4], 10)
	], true, anim_speed_fixed, 1));

	// walk — conditional sprite based on speed
	ds_map_add(_map, "walk", new AnimationSet(undefined,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 1, _walk_sprite),
	true, anim_speed_locomotion));

	// run
	ds_map_add(_map, "run", new AnimationSet(sprSonicRun,
		AnimFrames([0, 1, 2, 3]),
	true, anim_speed_fixed));

	// sprint
	ds_map_add(_map, "sprint", new AnimationSet(sprSonicSprint,
		AnimFrames([0, 1, 2, 3]),
	true, anim_speed_fixed));

	// cliff
	ds_map_add(_map, "cliff", new AnimationSet(sprSonicCliff,
		AnimFrames([0, 1, 2], [9, 9, 8]),
	true, anim_speed_fixed));

	// cliff_b
	ds_map_add(_map, "cliff_b", new AnimationSet(sprSonicCliffB,
		AnimFrames([0, 1], [20, 19]),
	true, anim_speed_fixed));

	// push
	ds_map_add(_map, "push", new AnimationSet(sprSonicPush,
		AnimFrames([0, 1, 2, 3], [32, 32, 32, 31]),
	true, anim_speed_fixed));

	// brake — sound on first frame, chains to walk/run
	ds_map_add(_map, "brake", new AnimationSet(sprSonicBrake, [
		new AnimFrame(0, 9, undefined, _sfx_brake), AnimFrames([1, 2], [9, 8])
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprSonicLook, [
		new AnimFrame(0, 4), new AnimFrame(1)
	], false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprSonicCrouch, [
		new AnimFrame(0, 6), new AnimFrame(1)
	], false, anim_speed_fixed));

	// spin — irregular pattern: 1,0,2,0,3,0,4,0
	ds_map_add(_map, "spin", new AnimationSet(sprSonicSpin,
		AnimFrames([1, 0, 2, 0, 3, 0, 4, 0]),
	true, anim_speed_spin));

	// spindash — irregular pattern: 0,1,0,2,0,3,0,4
	ds_map_add(_map, "spindash", new AnimationSet(sprSonicSpindash,
		AnimFrames([0, 1, 0, 2, 0, 3, 0, 4]),
	true, anim_speed_fixed));

	// peelout — walk→jog→sprint with sprite changes
	ds_map_add(_map, "peelout", new AnimationSet(undefined, [
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 2, sprSonicWalk),
		AnimFrames([0, 1, 2, 3, 4, 5, 6], 1, sprSonicJog),
		AnimFrames([0, 1, 2, 3], 1, sprSonicSprint)
	], true, anim_speed_fixed, 14));

	// peelout_end — walk frames in reverse
	ds_map_add(_map, "peelout_end", new AnimationSet(sprSonicWalk,
		AnimFrames([7, 6, 5, 4, 3, 2, 1, 0], 2),
	false, anim_speed_fixed, 0, _peelout_end));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprSonicRise, [
		new AnimFrame(0)
	], false, anim_speed_fixed));

	// flip
	ds_map_add(_map, "flip", new AnimationSet(sprSonicFlip,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 6),
	false, anim_speed_fixed, 0, _flip_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprSonicGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// transform — flickers between frames 3 and 4
	ds_map_add(_map, "transform", new AnimationSet(sprSonicTransform,
		AnimFrames([0, 1, 2, 3, 4, 3, 4, 3, 4, 3, 4], [6, 6, 3, 3, 3, 3, 3, 3, 3, 3, 3]),
	false, anim_speed_fixed, 0, _transform_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprSonicRotate,
		AnimFrames([0, 1, 2, 3, 4, 5], 2),
	false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprSonicWarp,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprSonicHurt,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprSonicDead,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// drown
	ds_map_add(_map, "drown", new AnimationSet(sprSonicDead,
		AnimFrames([2]),
	false, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprSonic3DTurn,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprSonicStandRotate,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 2),
	true, anim_speed_fixed));

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
	ds_map_add(_map, "swing", new AnimationSet(sprSonicSwing,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprSonicWallRun,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprSonicFloating,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 2),
	true, anim_speed_fixed));

	// drop_dash
	ds_map_add(_map, "drop_dash", new AnimationSet(sprSonicDropDash,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]),
	true, anim_speed_fixed));

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

	// idle — complex multi-phase: breathing, looking, foot tapping
	ds_map_add(_map, "idle", new AnimationSet(sprTailsIdle, [
		new AnimFrame(0, 80), AnimFrames([1, 2], 8), new AnimFrame(0, 64),
		AnimFrames([1, 2], 8), new AnimFrame(0, 72), new AnimFrame(3, 128),
		AnimFrames([4, 5, 6], 8), AnimFrames([5, 6], 8), AnimFrames([5, 6], 8),
		AnimFrames([5, 6], 8), AnimFrames([5, 6], 8), new AnimFrame(4, 8)
	], true, anim_speed_fixed, 7));

	// walk
	ds_map_add(_map, "walk", new AnimationSet(sprTailsWalk,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7]),
	true, anim_speed_locomotion));

	// run
	ds_map_add(_map, "run", new AnimationSet(sprTailsRun,
		AnimFrames([0, 1, 2, 3]),
	true, anim_speed_fixed));

	// sprint
	ds_map_add(_map, "sprint", new AnimationSet(sprTailsRun,
		AnimFrames([4, 5, 6], 2),
	true, anim_speed_fixed));

	// cliff
	ds_map_add(_map, "cliff", new AnimationSet(sprTailsCliff,
		AnimFrames([0, 1], [20, 19]),
	true, anim_speed_fixed));

	// push
	ds_map_add(_map, "push", new AnimationSet(sprTailsPush,
		AnimFrames([0, 1, 2, 3], [32, 32, 32, 31]),
	true, anim_speed_fixed));

	// brake — Tails has 3-way sprint/run/walk end
	ds_map_add(_map, "brake", new AnimationSet(sprTailsBrake, [
		new AnimFrame(0, 8, undefined, _sfx_brake), new AnimFrame(1, 8)
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprTailsLook,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprTailsCrouch,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// spin
	ds_map_add(_map, "spin", new AnimationSet(sprTailsSpin,
		AnimFrames([0, 1, 2]),
	true, anim_speed_spin));

	// spindash
	ds_map_add(_map, "spindash", new AnimationSet(sprTailsSpindash,
		AnimFrames([0, 1, 2]),
	true, anim_speed_fixed));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprTailsRise, [
		new AnimFrame(0, 4), new AnimFrame(1)
	], false, anim_speed_fixed));

	// flip
	ds_map_add(_map, "flip", new AnimationSet(sprTailsFlip,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 6),
	false, anim_speed_fixed, 0, _flip_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprTailsGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprTailsRotate,
		AnimFrames([0, 1, 2, 3, 4, 5], 2),
	false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprTailsWarp,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprTailsHurt,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprTailsDead,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// flight
	ds_map_add(_map, "flight", new AnimationSet(sprTailsFlight,
		AnimFrames([0]),
	true, anim_speed_fixed));

	// flight_end
	ds_map_add(_map, "flight_end", new AnimationSet(sprTailsFlight,
		AnimFrames([1, 2], [12, 11]),
	true, anim_speed_fixed));

	// swim
	ds_map_add(_map, "swim", new AnimationSet(sprTailsSwim,
		AnimFrames([0, 1, 2, 3, 4], [4, 4, 4, 4, 3]),
	true, anim_speed_fixed));

	// swim_end
	ds_map_add(_map, "swim_end", new AnimationSet(sprTailsSwim,
		AnimFrames([5, 6, 7], [12, 12, 11]),
	true, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprTails3DTurn,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprTailsStandRotate,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 2),
	true, anim_speed_fixed));

	// level_end
	ds_map_add(_map, "level_end", new AnimationSet(sprTailsLevelEnd, [
		new AnimFrame(0, 3), new AnimFrame(1)
	], false, anim_speed_fixed));

	// level_start
	ds_map_add(_map, "level_start", new AnimationSet(sprTailsLevelEnd,
		AnimFrames([1, 0], 3),
	false, anim_speed_fixed, 0, _level_start_end));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprTailsSnowboard,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprTailsSwing,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprTailsWallRun,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprTailsFloating,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 2),
	true, anim_speed_fixed));

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

	// idle — complex multi-phase arm movement
	ds_map_add(_map, "idle", new AnimationSet(sprKnucklesIdle, [
		new AnimFrame(0, 237),
		AnimFrames([1, 2], 7), AnimFrames([3, 4], 9), new AnimFrame(5, 6),
		AnimFrames([6, 7], 8), new AnimFrame(8, 9),
		AnimFrames([7, 6], 7), AnimFrames([5, 4], [9, 8]), AnimFrames([3, 2], 8),
		new AnimFrame(2, 6), AnimFrames([3, 4], 9), new AnimFrame(5, 7),
		AnimFrames([6, 7], [7, 9]), new AnimFrame(8, 9),
		AnimFrames([7, 6], 6), new AnimFrame(1, 10),
		AnimFrames([4, 3], [9, 7]), AnimFrames([2, 3], [7, 9]),
		AnimFrames([4, 5], 8), AnimFrames([6, 7], [6, 9]), new AnimFrame(8, 9),
		AnimFrames([7, 6], 7), AnimFrames([5, 4], 9), AnimFrames([3, 2], [6, 18]),
		new AnimFrame(5, 18)
	], true, anim_speed_fixed));

	// walk — conditional sprite
	ds_map_add(_map, "walk", new AnimationSet(undefined,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 1, _walk_sprite),
	true, anim_speed_locomotion));

	// run
	ds_map_add(_map, "run", new AnimationSet(sprKnucklesRun,
		AnimFrames([0, 1, 2, 3]),
	true, anim_speed_fixed));

	// cliff — ping-pong: 0,1,2,1
	ds_map_add(_map, "cliff", new AnimationSet(sprKnucklesCliff,
		AnimFrames([0, 1, 2, 1], 8),
	true, anim_speed_fixed));

	// cliff_b — same pattern
	ds_map_add(_map, "cliff_b", new AnimationSet(sprKnucklesCliffB,
		AnimFrames([0, 1, 2, 1], 8),
	true, anim_speed_fixed));

	// push
	ds_map_add(_map, "push", new AnimationSet(sprKnucklesPush,
		AnimFrames([0, 1, 2, 3], [8, 8, 8, 7]),
	true, anim_speed_fixed));

	// brake
	ds_map_add(_map, "brake", new AnimationSet(sprKnucklesBrake, [
		new AnimFrame(0, 4, undefined, _sfx_brake), AnimFrames([1, 2, 3], [4, 4, 3])
	], false, anim_speed_fixed, 0, _brake_end));

	// look
	ds_map_add(_map, "look", new AnimationSet(sprKnucklesLook, [
		new AnimFrame(0, 6), new AnimFrame(1)
	], false, anim_speed_fixed));

	// crouch
	ds_map_add(_map, "crouch", new AnimationSet(sprKnucklesCrouch, [
		new AnimFrame(0, 5), new AnimFrame(1)
	], false, anim_speed_fixed));

	// spin — irregular: 1,0,2,0,3,0,4,0
	ds_map_add(_map, "spin", new AnimationSet(sprKnucklesSpin,
		AnimFrames([1, 0, 2, 0, 3, 0, 4, 0]),
	true, anim_speed_spin));

	// spindash — irregular: 0,1,0,2,0,3,0,4
	ds_map_add(_map, "spindash", new AnimationSet(sprKnucklesSpindash,
		AnimFrames([0, 1, 0, 2, 0, 3, 0, 4]),
	true, anim_speed_fixed));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprKnucklesRise,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// flip
	ds_map_add(_map, "flip", new AnimationSet(sprKnucklesFlip,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 6),
	false, anim_speed_fixed, 0, _flip_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprKnucklesGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprKnucklesRotate,
		AnimFrames([0, 1, 2, 3, 4, 5], 2),
	false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprKnucklesWarp,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprKnucklesHurt,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprKnucklesDead,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// drown
	ds_map_add(_map, "drown", new AnimationSet(sprKnucklesDead,
		AnimFrames([1]),
	false, anim_speed_fixed));

	// glide — step_callback controls frame based on angle
	ds_map_add(_map, "glide", new AnimationSet(sprKnucklesGlide,
		AnimFrames([0]),
	false, anim_speed_fixed, 0, undefined, _glide_step));

	// glide_end
	ds_map_add(_map, "glide_end", new AnimationSet(sprKnucklesGlideFall, [
		new AnimFrame(0, 8), new AnimFrame(1)
	], false, anim_speed_fixed));

	// glide_slide
	ds_map_add(_map, "glide_slide", new AnimationSet(sprKnucklesGlideSlide,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// glide_stand_1
	ds_map_add(_map, "glide_stand_1", new AnimationSet(sprKnucklesCrouch, [
		new AnimFrame(1, 15)
	], false, anim_speed_fixed, 0, _glide_stand_end));

	// glide_stand_2
	ds_map_add(_map, "glide_stand_2", new AnimationSet(sprKnucklesGlideSlide, [
		new AnimFrame(1, 15)
	], false, anim_speed_fixed, 0, _glide_stand_end));

	// climb — speed_func pauses when not moving
	ds_map_add(_map, "climb", new AnimationSet(sprKnucklesClimb,
		AnimFrames([0, 1, 2, 3, 4, 5]),
	true, _climb_speed));

	// climb_end
	ds_map_add(_map, "climb_end", new AnimationSet(sprKnucklesClamber,
		AnimFrames([0, 1, 2], [7, 6]),
	false, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprKnuckles3DTurn,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprKnucklesStandRotate,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 2),
	true, anim_speed_fixed));

	// level_end
	ds_map_add(_map, "level_end", new AnimationSet(sprKnucklesLevelEnd,
		AnimFrames([0, 1, 2, 3, 5, 6, 7, 8], 3),
	false, anim_speed_fixed));

	// level_start — reverse of level_end
	ds_map_add(_map, "level_start", new AnimationSet(sprKnucklesLevelEnd,
		AnimFrames([8, 7, 6, 5, 4, 3, 2, 1, 0], 2),
	false, anim_speed_fixed, 0, _level_start_end));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprKnucklesSnowboard,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprKnucklesSwing,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprKnucklesWallRun,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprKnucklesFloating,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 2),
	true, anim_speed_fixed));

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
		new AnimFrame(0, 200), AnimFrames([1, 2, 3, 4], 10)
	], true, anim_speed_fixed, 1));

	// walk
	ds_map_add(_map, "walk", new AnimationSet(undefined,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 1, _walk_sprite),
	true, anim_speed_locomotion));

	// run (shared for sprint)
	var _ss_run = new AnimationSet(sprSuperSonicRun,
		AnimFrames([0, 1]),
	true, anim_speed_fixed);
	ds_map_add(_map, "run", _ss_run);
	ds_map_add(_map, "sprint", _ss_run);

	// cliff (shared for cliff_b)
	var _ss_cliff = new AnimationSet(sprSuperSonicCliff,
		AnimFrames([0, 1, 2, 1], [10, 10, 10, 9]),
	true, anim_speed_fixed);
	ds_map_add(_map, "cliff", _ss_cliff);
	ds_map_add(_map, "cliff_b", _ss_cliff);

	// push
	ds_map_add(_map, "push", new AnimationSet(sprSuperSonicPush,
		AnimFrames([0, 1, 2, 3], [32, 32, 32, 31]),
	true, anim_speed_fixed));

	// brake
	ds_map_add(_map, "brake", new AnimationSet(sprSuperSonicBrake, [
		new AnimFrame(0, 9, undefined, _sfx_brake), AnimFrames([1, 2], [9, 8])
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
	ds_map_add(_map, "spin", new AnimationSet(sprSuperSonicSpin,
		AnimFrames([1, 0, 2, 0, 3, 0, 4, 0]),
	true, anim_speed_spin));

	// spindash
	ds_map_add(_map, "spindash", new AnimationSet(sprSuperSonicSpinDash,
		AnimFrames([0, 1, 0, 2, 0, 3, 0, 4]),
	true, anim_speed_fixed));

	// peelout — walk→run with sprite change
	ds_map_add(_map, "peelout", new AnimationSet(undefined, [
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 2, sprSuperSonicWalk),
		AnimFrames([0, 1, 2, 3, 4, 5, 6], 1, sprSuperSonicWalk),
		AnimFrames([0, 1], 1, sprSuperSonicRun)
	], true, anim_speed_fixed, 14));

	// peelout_end
	ds_map_add(_map, "peelout_end", new AnimationSet(sprSuperSonicWalk,
		AnimFrames([7, 6, 5, 4, 3, 2, 1, 0], 2),
	false, anim_speed_fixed, 0, _peelout_end));

	// rise
	ds_map_add(_map, "rise", new AnimationSet(sprSuperSonicRise,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// flip (reuses Sonic's flip sprite)
	ds_map_add(_map, "flip", new AnimationSet(sprSonicFlip,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 6),
	false, anim_speed_fixed, 0, _get_air_end));

	// get_air
	ds_map_add(_map, "get_air", new AnimationSet(sprSuperSonicGetAir, [
		new AnimFrame(0, 24)
	], false, anim_speed_fixed, 0, _get_air_end));

	// wrap_post
	ds_map_add(_map, "wrap_post", new AnimationSet(sprSuperSonicRotate,
		AnimFrames([0, 1, 2, 3, 4, 5], 2),
	false, anim_speed_fixed));

	// warp
	ds_map_add(_map, "warp", new AnimationSet(sprSuperSonicWarp,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// hurt
	ds_map_add(_map, "hurt", new AnimationSet(sprSuperSonicHurt,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// dead
	ds_map_add(_map, "dead", new AnimationSet(sprSuperSonicDead,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// drown
	ds_map_add(_map, "drown", new AnimationSet(sprSuperSonicDead,
		AnimFrames([2]),
	false, anim_speed_fixed));

	// 3DTurn
	ds_map_add(_map, "3DTurn", new AnimationSet(sprSuperSonic3DTurn,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// boarding
	ds_map_add(_map, "boarding", new AnimationSet(sprSuperSonicSnowboard, [
		new AnimFrame(0, 4, undefined, _boarding_fn)
	], true, anim_speed_fixed));

	// swing
	ds_map_add(_map, "swing", new AnimationSet(sprSuperSonicSwing,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// wallrun
	ds_map_add(_map, "wallrun", new AnimationSet(sprSuperSonicWallRun,
		AnimFrames([0]),
	false, anim_speed_fixed));

	// float
	ds_map_add(_map, "float", new AnimationSet(sprSuperSonicFloating,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7], 2),
	true, anim_speed_fixed));

	// stand_rotate
	ds_map_add(_map, "stand_rotate", new AnimationSet(sprSuperSonicStandRotate,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 2),
	true, anim_speed_fixed));

	// drop_dash
	ds_map_add(_map, "drop_dash", new AnimationSet(sprSuperSonicDropDash,
		AnimFrames([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]),
	true, anim_speed_fixed));

	return _map;
}