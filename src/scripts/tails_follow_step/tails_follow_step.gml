function tails_follow_step() {
	// tails_follow_step()
	// Update CPU Tails position by reading leader's position history
	
	// Abort if no leader exists
	if (leader == noone or !instance_exists(leader)) {
		visible = false;
		if (tails_effect != noone and instance_exists(tails_effect))
			tails_effect.visible = false;
		return;
	}
	
	// Hide during non-gameplay states (death, entering, exiting, cutscene complete, super flight, standby)
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
		return;
	}
	
	visible = true;
	if (tails_effect != noone and instance_exists(tails_effect))
		tails_effect.hide = false;
	
	var buf_size = ds_list_size(leader.xtable);
	
	// If history is too small, stand behind leader
	if (buf_size < 2) {
		x = leader.x - 32 * leader.facing;
		y = leader.y;
		state = player_state_stand;
		animation_new = "idle";
		timeline_speed = 1;
		spinning = false;
		xspeed = 0;
		yspeed = 0;
		// Update tails effect position
		if (tails_effect != noone and instance_exists(tails_effect)) {
			tails_effect.x = x;
			tails_effect.y = y;
		}
		return;
	}
	
	// Calculate distance to leader's current position
	var dist_to_leader = point_distance(x, y, leader.x, leader.y);
	
	// === FLYING CATCH-UP MODE ===
	if (fly_mode) {
		// Fly directly toward leader's current position
		var dir = point_direction(x, y, leader.x, leader.y);
		x += lengthdir_x(fly_speed, dir);
		y += lengthdir_y(fly_speed, dir);
		
		state = player_state_fly;
		animation_new = "flight";
		timeline_speed = 1;
		spinning = false;
		
		// Arrived close enough — resume normal follow
		if (dist_to_leader < 48) {
			fly_mode = false;
			state = player_state_fall;
			animation_new = "spin";
		}
		
		// Face toward leader
		if (leader.x > x) facing = 1;
		else if (leader.x < x) facing = -1;
		
		// Compute xspeed/yspeed for tails effect angle calculation
		xspeed = x - prev_x;
		yspeed = y - prev_y;
		prev_x = x;
		prev_y = y;
		
		// Sync depth behind leader
		depth = leader.depth + 1;
		
		// Update tails effect position
		if (tails_effect != noone and instance_exists(tails_effect)) {
			tails_effect.x = x;
			tails_effect.y = y;
		}
		return;
	}
	
	// Enter fly mode if too far behind
	if (dist_to_leader > fly_distance) {
		fly_mode = true;
		state = player_state_fly;
		animation_new = "flight";
		timeline_speed = 1;
		spinning = false;
		// Update tails effect position
		if (tails_effect != noone and instance_exists(tails_effect)) {
			tails_effect.x = x;
			tails_effect.y = y;
		}
		return;
	}
	
	// Teleport if extremely far (safety net)
	if (dist_to_leader > teleport_distance) {
		x = leader.x - 32 * leader.facing;
		y = leader.y;
	}
	
	// === NORMAL FOLLOW MODE: Read delayed position from leader's history ===
	var read_idx = buf_size - 1 - follow_delay;
	if (read_idx < 0) read_idx = 0;
	
	var target_x = ds_list_find_value(leader.xtable, read_idx);
	var target_y = ds_list_find_value(leader.ytable, read_idx);
	var target_anim = ds_list_find_value(leader.anim_table, read_idx);
	var target_angle = ds_list_find_value(leader.angle_table, read_idx);
	
	// Safety check for invalid values
	if (!is_real(target_x) or !is_real(target_y)) {
		prev_x = x;
		prev_y = y;
		return;
	}
	
	// Calculate movement delta from current position to target
	move_dx = target_x - x;
	move_dy = target_y - y;
	move_speed = point_distance(0, 0, move_dx, move_dy);
	
	// Move to the recorded position (position replay)
	x = target_x;
	y = target_y;
	
	// Replay exact angle from leader (used by TailsEffect for spin axis)
	if (is_real(target_angle)) angle = target_angle;
	
	// Compute xspeed/yspeed for tails effect angle calculation
	xspeed = move_dx;
	yspeed = move_dy;
	
	// Determine facing direction from horizontal movement
	if (abs(move_dx) > 0.5) facing = sign(move_dx);
	
	// Sync depth behind leader
	depth = leader.depth + 1;
	
	// === Animation: use exact recorded value from leader ===
	if (is_string(target_anim) and target_anim != "") {
		animation_new = target_anim;
		// Remap character-exclusive animations that don't exist in Tails' table
		switch (animation_new) {
			// Sonic-only → spin
			case "peelout":      animation_new = "spin";  break;
			case "instashield":  animation_new = "spin";  break;
			case "dropdash":     animation_new = "spin";  break;
			case "drop_dash":    animation_new = "spin";  break;
			case "transform":    animation_new = "spin";  break;
			// Sonic-only → closest Tails equivalent
			case "peelout_end":  animation_new = "idle";  break;
			case "transform_run":animation_new = "run";   break;
			case "drown":        animation_new = "idle";  break;
			// Knuckles-only → closest Tails equivalent
			case "glide":        animation_new = "spin";  break;
			case "glide_end":    animation_new = "idle";  break;
			case "glide_slide":  animation_new = "walk";  break;
			case "glide_stand_1":animation_new = "idle";  break;
			case "glide_stand_2":animation_new = "idle";  break;
			case "climb":        animation_new = "idle";  break;
			case "climb_end":    animation_new = "idle";  break;
		}
	} else {
		// Fallback: infer from speed if anim_table not populated yet
		if (move_speed < 0.5) animation_new = "idle";
		else if (leader.spinning) animation_new = "spin";
		else if (move_speed >= 8) animation_new = "sprint";
		else if (move_speed >= 4) animation_new = "run";
		else animation_new = "walk";
	}
	
	// Map spinning flag and state from leader
	spinning = leader.spinning;
	state = leader.state;
	
	// Set animation playback speed based on movement
	if (animation_new == "idle") timeline_speed = 1;
	else if (animation_new == "spin") timeline_speed = 1/max(5 - move_speed, 1);
	else if (animation_new == "sprint") timeline_speed = 1/max(10 - move_speed, 1);
	else timeline_speed = 1/max(8 - move_speed, 1);
	
	// Store previous position for next frame's delta
	prev_x = x;
	prev_y = y;
	
	// Update tails effect position
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
}