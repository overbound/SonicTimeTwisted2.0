function player_state_fall() {
	// player_state_fall()
	var motion_direction = input_axis_x();
	// ignore if rolling from a jump
	//if not rolling_jump
	//{
	    // aerial acceleration
	    if motion_direction < 0 {facing = -1; if xspeed>-used_speed_cap xspeed = max(xspeed-air_acceleration, -used_speed_cap);}
	    if motion_direction > 0 {facing = 1; if xspeed<used_speed_cap xspeed = min(xspeed+air_acceleration, used_speed_cap);}
	//}
	// update position
	if not player_movement_air()
	{
	    // bubble shield bounce
	    if shield
	    {
	        // shield animation
	        if shield.timeline_index==animShieldBubbleAction
	        {
	            shield.timeline_index = animShieldBubbleActionEnd;
	            shield.timeline_loop = false;
	            shield.timeline_position = 0;
	        }
	    }
	    return false;
	}
	// jump height
	if jumping and input_check_released(cACTION) and yspeed<-jump_release 
	yspeed = -jump_release;
	// air friction
	if yspeed<0 and yspeed>-jump_release xspeed *= air_friction;
	// gravity
	yspeed += gravity_force;
	// landing
	if landed
	{
	    // check character id
	    switch character_id
	    {
	    case 1: // Sonic
	        // destroy instashield
	        with instashield instance_destroy();
	        instashield = noone;
	        // bubble shield bounce
	        if shield {if shield.timeline_index==animShieldBubbleAction return player_is_bouncing();}
			
			//Drop dash launching
			if dropdash_charge == 20 {
				dropdash_charge = 0;
				dropDash = false;
				camera.alarm[0] = 16;
		        if !superform play_sfx(sndSpinDash);
				else play_sfx(sndPeeloutRelease);
		        stop_sound(sndDropDash);
		        if (sign(xspeed) == facing) || (sign(xspeed) == 0){ //if player was moving forwards
					xspeed = (xspeed / 4) + (drpspd * facing);
		            xspeed = clamp(xspeed, -drpmax, drpmax);
		        }else{ //else if player was moving backwards
		            if relative_angle == 0 xspeed = drpspd * facing;
		            else xspeed = (xspeed / 2) + (drpspd * facing);
		            xspeed = clamp(xspeed, -drpmax, drpmax);
		        }
				//Create drop dash particle
				part_type_scale(objResources.dropdash_dust, facing, 1);
				part_particles_create(objLevel.particles, x, y, objResources.dropdash_dust, 1);
				return player_is_rolling();
			}
			
			dropdash_charge = 0;
	        break;
	    case 3: // Knuckles
	        if glide_falling
	        {
	            if relative_angle>=45 and relative_angle<=315 {if (xspeed != 0) return player_is_running(); else return player_is_standing();} else
	            {
	                play_sfx(sndGlideLand, 1);
	                rumble(rumble_short_strong);
	                return player_is_glide_standing();
	            }
	        }
	        break;
	    }
	    // maintain spindash
	    if spindashing return player_is_spindashing();
	    // land normally
	    if xspeed!=0 return player_is_running(); else return player_is_standing();
	}
	// jump actions
	//Charge the drop dash when holding the button.
	if input_check(cACTION)
	{
		if character_id == 1 //Sonic
		{
			if dropdash_charge > 0 && !dropDash && (special_move_mode == 1 || special_move_mode == 2) {
				dropdash_charge = min(dropdash_charge+1, 20);
				if dropdash_charge >= 20{
					//Drop dash fully ready
					return player_is_drop_dashing();
				}
			}
		}
	}
	
	//Charge the drop dash when you press down twice
	if(character_id == 1 && !dropDash && !shield && spinning && jumping && special_move_mode == 3) {
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
					if !shield && spinning && jumping && dropdash_charge == 0{
						dropdash_charge++;
					}
					break;
			}
		}
	}
	if jump_action
	{
	    // super transformation
	    if superform and player_transform_input() player_transform(false); else
	    if objProgram.special_future_current_level>=7 and (not objLevel.cleared) and objGameData.rings[0]>=50 and (character_id == 1) and not (superform or invincibility) and player_transform_input() return player_is_transforming(); else
	    // jump action
	    if input_check_pressed(cACTION)
	    {
	        // curl up
	        if not spinning
	        {
	            // animate
	            animation_new = "spin";
	            timeline_speed = 1;
	            image_angle = 0;
    
	            // states and flags
	            spinning = true;
    
	            // sound
	            play_sfx(sndSpinDash, 0);
	        }
	        else
	        // check character id
	        switch character_id
	        {
	        case 1: // Sonic
	            /*if invincibility break;
	            if superform {
	                player_is_shielding(); break;
	                }*/
	            switch shield_type
	            {
	            case 0: return player_is_earth_shielding(); break;
	            case 1: return player_is_bounding(); break;
	            case 2: return player_is_double_jumping(); break;
	            case 3: return player_is_air_dashing(); break;
	            case 4: return player_is_ice_attacking(); break;
	            case 5: if underwater==false return player_is_shield_flying(); break;
	            default: {
					switch special_move_mode {
						case 0: //Instashield only
						case 2: //Both, drop dash triggered by holding jump
						case 3: //Both, drop dash triggered by pressing down twice
							return player_is_shielding();
							break;
					}
				}
	            }
	            break;
    
	        case 2: // Tails
	            return player_is_flying();
	            break;
    
	        case 3: // Knuckles
	            return player_is_gliding();
	            break;
	        case 4:
        
	        break;
	        }
	    }
	}
	//Drop dash cancelling
	if ((input_check_released(cACTION)) && character_id == 1 && (special_move_mode == 1 || special_move_mode == 2)) || (input_check_pressed(cUP) && special_move_mode == 3){
		if dropdash_charge > 0 {
			dropdash_charge = 0;
			dropDash = false;
			//animate
			animation_new = "spin";
			timeline_speed = 1/max(5-abs(xspeed), 1);
		}
	}
	// animate
	if (animation=="rise") and (yspeed>=0) {animation_new = "walk"; timeline_speed = 0.125;}
	if not spinning and (image_angle!=angle) image_angle = angle_wrap(image_angle+2.8125*sign(angle_distance(image_angle, angle)));



}
