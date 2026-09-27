/// @description Replay leader's inputs with delay plus position bias
// === Always run parent physics — never exit before event_inherited() ===

// Set up input from leader (or zero if no leader)
if (leader != noone and instance_exists(leader)) {
	var buf_size = ds_list_size(leader.input_table);
	
	if (buf_size >= 2) {
		// Read leader's recorded input from 30 frames ago
		var read_idx = buf_size - 1 - follow_delay;
		if (read_idx < 0) read_idx = 0;
		
		var target_input = ds_list_find_value(leader.input_table, read_idx);
		var target_x = ds_list_find_value(leader.xtable, read_idx);
		var target_y = ds_list_find_value(leader.ytable, read_idx);
		
		if (!is_real(target_input)) target_input = 0;
		
		// === Position bias ===
		// If CPU Tails is too far from where the leader was, bias movement
		// toward that position. This prevents Tails from standing in empty
		// space when the leader was idle.
		var x_gap = target_x - x;
		var bias_input = 0;
		var dist = abs(x_gap);
		
		if (dist > 32) {
			// More than 32px away — fly to catch up
			fly_mode = true;
		} else if (dist > 8) {
			// 8-32px away — add horizontal input bias toward leader position
			bias_input = (x_gap > 0) ? cRIGHT : cLEFT;
		}
		// <8px — close enough, no bias needed
		
		// Merge recorded input with position bias
		local_input_state = target_input | bias_input;
		
		// Compute press/release from consecutive states
		local_input_press = (local_input_state & ~prev_input);
		local_input_release = (~local_input_state & prev_input);
		prev_input = local_input_state;
	} else {
		// Not enough history — no input yet, rely on position bias
		local_input_state = 0;
		local_input_press = 0;
		local_input_release = 0;
		
		// Move toward leader directly until history is built up
		if (abs(x - leader.x) > 16) {
			local_input_state = (x < leader.x) ? cRIGHT : cLEFT;
		}
	}
} else {
	// No leader — neutral input
	local_input_state = 0;
	local_input_press = 0;
	local_input_release = 0;
}

// === Fly catch-up mode ===
if (fly_mode and leader != noone and instance_exists(leader)) {
	var dist_to_leader = point_distance(x, y, leader.x, leader.y);
	
	if (dist_to_leader < 48) {
		// Arrived — snap to near leader
		fly_mode = false;
		x = leader.x - 16 * leader.facing;
		y = leader.y;
		xspeed = 0;
		yspeed = 0;
		player_in_air();
	} else {
		// Fly toward leader
		var dir = point_direction(x, y, leader.x, leader.y);
		x += lengthdir_x(fly_speed, dir);
		y += lengthdir_y(fly_speed, dir);
		xspeed = 0;
		yspeed = 0;
		animation_new = "flight";
	}
	// Update tails effect during fly mode
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
	return;
}

// === Teleport safety net ===
if (leader != noone and instance_exists(leader)) {
	var dist_to_leader = point_distance(x, y, leader.x, leader.y);
	if (dist_to_leader > teleport_distance) {
		x = leader.x - 32 * leader.facing;
		y = leader.y;
		xspeed = 0;
		yspeed = 0;
	}
}

// === RUN NORMAL PLAYER PHYSICS ===
event_inherited();

// Count down invulnerability (collision events set it to 120 on hit)
if (invulnerable > 0) invulnerable -= 1;

// Force full visibility — override objPlayer Step_2's flash formula
image_alpha = 1;

// Update tails effect
if (tails_effect != noone and instance_exists(tails_effect)) {
	tails_effect.x = x;
	tails_effect.y = y;
}