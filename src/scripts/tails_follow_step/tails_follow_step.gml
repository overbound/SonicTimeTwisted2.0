function tails_follow_step() {
	// tails_follow_step()
	// Update CPU Tails using player physics with input replay
	
	// Abort if no leader exists
	if (leader == noone or !instance_exists(leader)) {
		visible = false;
		if (tails_effect != noone and instance_exists(tails_effect))
			tails_effect.visible = false;
		return;
	}
	
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
		animation_new = "idle";
		spinning = false;
		xspeed = 0;
		yspeed = 0;
		if (tails_effect != noone and instance_exists(tails_effect)) {
			tails_effect.x = x;
			tails_effect.y = y;
		}
		return;
	}
	
	// Read target from leader's history (delayed)
	var read_idx = buf_size - 1 - follow_delay;
	if (read_idx < 0) read_idx = 0;
	
	var target_x = ds_list_find_value(leader.xtable, read_idx);
	var target_y = ds_list_find_value(leader.ytable, read_idx);
	var target_anim = ds_list_find_value(leader.anim_table, read_idx);
	var target_input = ds_list_find_value(leader.input_table, read_idx);
	
	// Safety check
	if (!is_real(target_x) or !is_real(target_y)) {
		prev_x = x;
		prev_y = y;
		return;
	}
	
	// Distance to target and to leader
	var dist_to_target = point_distance(x, y, target_x, target_y);
	var dist_to_leader = point_distance(x, y, leader.x, leader.y);
	
	// === FLYING CATCH-UP MODE ===
	if (fly_mode) {
		var dir = point_direction(x, y, leader.x, leader.y);
		x += lengthdir_x(fly_speed, dir);
		y += lengthdir_y(fly_speed, dir);
		
		animation_new = "flight";
		spinning = false;
		xspeed = x - prev_x;
		yspeed = y - prev_y;
		
		if (dist_to_leader < 48) {
			fly_mode = false;
			// Land near leader
			x = leader.x - 16 * leader.facing;
			y = leader.y;
		}
		
		if (leader.x > x) facing = 1;
		else if (leader.x < x) facing = -1;
		
		prev_x = x;
		prev_y = y;
		depth = leader.depth + 1;
		
		if (tails_effect != noone and instance_exists(tails_effect)) {
			tails_effect.x = x;
			tails_effect.y = y;
		}
		return;
	}
	
	// Enter fly mode if too far
	if (dist_to_leader > fly_distance) {
		fly_mode = true;
		animation_new = "flight";
		spinning = false;
		if (tails_effect != noone and instance_exists(tails_effect)) {
			tails_effect.x = x;
			tails_effect.y = y;
		}
		return;
	}
	
	// Teleport safety net
	if (dist_to_leader > teleport_distance) {
		x = leader.x - 32 * leader.facing;
		y = leader.y;
		xspeed = 0;
		yspeed = 0;
	}
	
	// === PHYSICS-BASED MOVEMENT ===
	
	// Compute input from leader's recorded state
	var action_held = (target_input & cACTION);
	var action_just_pressed = (target_input & cACTION) and !(prev_input & cACTION);
	prev_input = target_input;
	
	// Determine if on ground using collision
	var on_ground = false;
	if (landed) {
		// Check if still on ground
		var _check = collision_line(x - offset_x, y + offset_y + 1, x + offset_x, y + offset_y + 1, objSolid, false, true);
		if (_check) {
			on_ground = true;
		} else {
			landed = false;
		}
	}
	
	if (on_ground) {
		// === GROUND MOVEMENT ===
		
		// Horizontal: accelerate toward target
		var dx = target_x - x;
		if (abs(dx) > 4) {
			var target_dir = sign(dx);
			xspeed += target_dir * 0.5;
			// Apply friction when changing direction
			if (sign(xspeed) != target_dir and abs(xspeed) > 0.5) {
				xspeed *= 0.8;
			}
			// Cap speed
			xspeed = clamp(xspeed, -10, 10);
		} else {
			// Decelerate near target
			xspeed *= 0.85;
			if (abs(xspeed) < 0.3) xspeed = 0;
		}
		
		// Gravity
		yspeed += gravity_force;
		
		// Jump if leader pressed ACTION
		if (action_just_pressed and !spinning) {
			yspeed = -jump_force;
			landed = false;
			spinning = true;
			jumping = true;
			animation_new = "spin";
		}
		
		// Move horizontally with collision
		x += xspeed;
		
		// Wall collision (horizontal)
		var _wall = collision_line(x + sign(xspeed) * offset_wall, y - offset_y, x + sign(xspeed) * offset_wall, y + offset_y - 1, objSolid, false, true);
		if (_wall) {
			if (xspeed > 0) {
				x = _wall.bbox_left - offset_wall - 1;
			} else if (xspeed < 0) {
				x = _wall.bbox_right + offset_wall + 1;
			}
			xspeed = 0;
		}
		
		// Move vertically with collision
		y += yspeed;
		
		// Floor collision
		var _floor = collision_line(x - offset_x, y + offset_y, x + offset_x, y + offset_y, objSolid, false, true);
		if (_floor and yspeed >= 0) {
			y = _floor.bbox_top - offset_y;
			yspeed = 0;
			landed = true;
		} else if (!_floor) {
			landed = false;
		}
		
		// Update animation
		if (landed) {
			if (abs(xspeed) < 0.5) {
				animation_new = "idle";
			} else if (abs(xspeed) >= 6) {
				animation_new = "run";
			} else {
				animation_new = "walk";
			}
			spinning = false;
			jumping = false;
		}
		
	} else {
		// === AIR MOVEMENT ===
		
		// Horizontal: slight control toward target
		var dx = target_x - x;
		if (abs(dx) > 8) {
			xspeed += sign(dx) * 0.15;
			xspeed = clamp(xspeed, -10, 10);
		}
		
		// Gravity
		yspeed += gravity_force;
		yspeed = min(yspeed, max_yspeed);
		
		// Move
		x += xspeed;
		y += yspeed;
		
		// Floor collision
		var _floor = collision_line(x - offset_x, y + offset_y, x + offset_x, y + offset_y, objSolid, false, true);
		if (_floor and yspeed >= 0) {
			y = _floor.bbox_top - offset_y;
			yspeed = 0;
			landed = true;
			spinning = false;
			jumping = false;
		}
		
		// Ceiling collision
		var _ceil = collision_line(x - offset_x, y - offset_y, x + offset_x, y - offset_y, objSolid, false, true);
		if (_ceil and yspeed < 0) {
			y = _ceil.bbox_bottom + offset_y + 1;
			yspeed = 0;
		}
		
		// Wall collision
		var _wall = collision_line(x + sign(xspeed) * offset_wall, y - offset_y, x + sign(xspeed) * offset_wall, y + offset_y - 1, objSolid, false, true);
		if (_wall) {
			if (xspeed > 0) {
				x = _wall.bbox_left - offset_wall - 1;
			} else if (xspeed < 0) {
				x = _wall.bbox_right + offset_wall + 1;
			}
			xspeed = 0;
		}
		
		// Air animation
		if (!landed) {
			animation_new = "spin";
		}
	}
	
	// Facing direction
	if (abs(xspeed) > 0.5) facing = sign(xspeed);
	
	// Sync depth behind leader
	depth = leader.depth + 1;
	
	// Store previous position
	prev_x = x;
	prev_y = y;
	
	// Update tails effect position
	if (tails_effect != noone and instance_exists(tails_effect)) {
		tails_effect.x = x;
		tails_effect.y = y;
	}
}