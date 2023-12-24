function player_state_shield_fly() {
	// player_state_shield_fly()
	var target_direction = shield.direction;
	// flight direction
	target_direction = point_direction(0, 0, input_axis_x(), input_axis_y());
	// rotate towards desired direction
	var distance = angle_distance(shield.direction, target_direction);
	shield.direction = angle_wrap(shield.direction+min(4, abs(distance))*sign(distance));
	// update speed
	xspeed = cosine[shield.direction]* 4;
	yspeed = -sine[shield.direction] *  4;
	// update position
	if not player_movement_air() return false;
	// landing
	if landed return player_is_running();    
	// fall if a wall was hit
	if wall_direction!=0 or player_collision_ceiling(offset_y+5) return player_is_falling();
	// fall if no longer in wind shield or time is up
	if shield==noone or shield_type!=5 or not alarm[0] return player_is_falling();
	//rumble
	rumble(rumble_short_weakest);

	// jump actions
	//Charge the drop dash when holding the button.
	if input_check(cACTION)
	{
		if character_id == 1 //Sonic
		{
			if dropdash_charge > 0 && !dropDash && (special_move_mode == 1 || special_move_mode == 2) {
				dropdash_charge = min(dropdash_charge+1, dropdash_charge_max);
				if dropdash_charge >= dropdash_charge_max{
					//Drop dash fully ready
					player_is_falling();
					return player_is_drop_dashing();
				}
			}
		}
	}
	
	if input_check_pressed(cACTION)
	{
		if character_id == 1 //Sonic
		{
			switch special_move_mode {
				case 1: //Drop dash only
				case 2: //Both, drop dash triggered by holding jump
					if dropdash_charge == 0{
						dropdash_charge++;
					}
					break;
			}
		}
	}
	
	//Charge the drop dash when you press down twice
	if(character_id == 1 && !dropDash && special_move_mode == 3) {
		if input_check_pressed(cDOWN) && objScreen.image_index - 30 <= last_frame_down_pressed {
			last_frame_down_pressed = 0;
			return player_is_drop_dashing();
		} else if input_check_pressed(cDOWN) {
			last_frame_down_pressed = objScreen.image_index;
		}
	}
	//Begin charging Drop Dash when you press jump
	if input_check_pressed(cACTION)
	{
		if character_id == 1 //Sonic
		{
			switch special_move_mode {
				case 1: //Drop dash only
				case 2: //Both, drop dash triggered by holding jump
					if dropdash_charge == 0{
						dropdash_charge++;
					}
					break;
			}
		}
	}

}
