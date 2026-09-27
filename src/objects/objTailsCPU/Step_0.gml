/// @description Genesis-style buffer replay — no terrain collision, object collision only
// Abort if no leader
if (leader == noone or !instance_exists(leader)) {
	visible = false;
	if (tails_effect != noone and instance_exists(tails_effect))
		tails_effect.visible = false;
	exit;
}

// Hide during non-gameplay leader states
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

var buf_size = ds_list_size(leader.xtable);

// Not enough history — place behind leader
if (buf_size < follow_delay + 1) {
	x = leader.x - 32 * leader.facing;
	y = leader.y;
	spinning = false;
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	exit;
}

// === RUBBERBAND: teleport catch-up ===
var dist_to_leader = point_distance(x, y, leader.x, leader.y);
if (dist_to_leader > teleport_distance) {
	// Teleport above and behind camera, then fly toward Sonic
	x = leader.x - 200 * leader.facing;
	y = leader.y - 240;
	spinning = false;
	// Enter fly catch-up mode — skip buffer reading until arrived
	tails_catchup = true;
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	exit;
}

// === TELEPORT FLUSH ===
// If leader just time-traveled or checkpointed, their position jumped.
// Detect via a massive delta and flush the buffer by resetting position.
var leader_dx = abs(leader.x - ds_list_find_value(leader.xtable, max(0, buf_size - 2)));
if (leader_dx > 256) {
	// Leader teleported — snap Tails to leader position to avoid
	// interpolating across the entire level triggering every collision
	x = leader.x;
	y = leader.y;
	spinning = false;
	image_index = leader.image_index;
	sprite_index = leader.sprite_index;
	// Reset previous sprite to force a fresh apply next frame
	prev_sprite = -1;
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	exit;
}

// === FLY CATCH-UP MODE ===
if (tails_catchup) {
	// Simple velocity toward leader
	var dir = point_direction(x, y, leader.x, leader.y);
	x += lengthdir_x(6, dir);
	y += lengthdir_y(6, dir);
	facing = (leader.x > x) ? 1 : -1;
	sprite_index = sprTailsFlight;
	image_index = 0;
	spinning = false;
	
	// Arrived — rejoin
	if (dist_to_leader < 48) {
		tails_catchup = false;
		x = leader.x - 16 * leader.facing;
		y = leader.y;
		spinning = leader.spinning;
	}
	
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	exit;
}

// === HIT STATE ===
// If Tails was hit, play hurt flash and pause buffer reading
if (tails_hurt > 0) {
	tails_hurt -= 1;
	if (tails_hurt <= 0) {
		// Resume from leader's current position
		x = leader.x - 32 * leader.facing;
		y = leader.y;
		spinning = leader.spinning;
	}
	// Use previous frame's sprite to hold hurt pose
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	exit;
}

// === NORMAL FOLLOW: read buffer with 16-frame delay ===
var read_idx = (buf_size - 1 - follow_delay);
if (read_idx < 0) read_idx = 0;

var target_x = ds_list_find_value(leader.xtable, read_idx);
var target_y = ds_list_find_value(leader.ytable, read_idx);
var target_sprite = ds_list_find_value(leader.sprite_table, read_idx);
var target_facing = ds_list_find_value(leader.facing_table, read_idx);
var target_spinning = ds_list_find_value(leader.spinning_table, read_idx);

if (!is_real(target_x) or !is_real(target_y)) exit;

// Blindingly apply position — no terrain collision
x = target_x;
y = target_y;

// Read animation name for objTailsEffect
var target_anim = ds_list_find_value(leader.anim_table, read_idx);
if (is_string(target_anim)) animation = target_anim;

// Apply sprite directly — Tails has no AnimationHandler, replays leader's exact frame
if (is_real(target_sprite)) {
	sprite_index = target_sprite;
}
// Use leader's exact image_index (the mapping frame at this buffer position)
var target_frame = ds_list_find_value(leader.image_index_table, read_idx);
if (is_real(target_frame)) image_index = target_frame;

if (is_real(target_facing)) facing = target_facing;
if (is_real(target_spinning)) spinning = target_spinning;

// Count down invulnerability
if (invulnerable > 0) invulnerable -= 1;

// Update tails effect
if (tails_effect != noone and instance_exists(tails_effect)) {
	tails_effect.x = x;
	tails_effect.y = y;
}