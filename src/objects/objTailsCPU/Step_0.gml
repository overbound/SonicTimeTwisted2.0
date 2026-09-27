/// @description Replay leader's inputs with delay
// Abort if no leader
if (leader == noone or !instance_exists(leader)) exit;

// Hide during non-gameplay states
if (leader.state == player_state_dead
	or leader.state == player_state_enter
	or leader.state == player_state_exit
	or leader.state == player_state_complete
	or leader.state == player_state_super_flight
	or leader.state == player_state_standby) {
	visible = false;
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.visible = false;
		tails_effect.hide = true;
	}
	exit;
}

visible = true;
if (tails_effect != noone and instance_exists(tails_effect))
	tails_effect.hide = false;

// === CATCH-UP / TELEPORT ===
var dist_to_leader = point_distance(x, y, leader.x, leader.y);

if (fly_mode) {
	// Fly directly toward leader
	var dir = point_direction(x, y, leader.x, leader.y);
	x += lengthdir_x(fly_speed, dir);
	y += lengthdir_y(fly_speed, dir);
	xspeed = 0;
	yspeed = 0;
	animation_new = "flight";
	facing = (leader.x > x) ? 1 : -1;
	
	if (dist_to_leader < 48) {
		fly_mode = false;
		// Snap to ground near leader
		x = leader.x - 16 * leader.facing;
		y = leader.y;
		xspeed = 0;
		yspeed = 0;
		player_in_air();
	}
	
	// Update tails effect
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	exit;
}

if (dist_to_leader > fly_distance) {
	fly_mode = true;
	exit;
}

if (dist_to_leader > teleport_distance) {
	x = leader.x - 32 * leader.facing;
	y = leader.y;
	xspeed = 0;
	yspeed = 0;
}

// === INPUT REPLAY ===
var buf_size = ds_list_size(leader.input_table);
if (buf_size < 2) exit;

var read_idx = buf_size - 1 - follow_delay;
if (read_idx < 0) read_idx = 0;

var target_input = ds_list_find_value(leader.input_table, read_idx);
if (!is_real(target_input)) exit;

// Set local input override — player state scripts will read these
local_input_state = target_input;
local_input_press = (target_input & ~prev_input);
local_input_release = (~target_input & prev_input);
prev_input = target_input;

// === RUN NORMAL PLAYER LOGIC (parent Step_0) ===
event_inherited();

// Keep invulnerable permanently
invulnerable = 999999;

// Update tails effect position
if (tails_effect != noone and instance_exists(tails_effect)) {
	tails_effect.x = x;
	tails_effect.y = y;
}