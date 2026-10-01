function player_state_peelout() {
	// player_state_spindash()
	// update position
	if not player_movement_ground() return false;
	// falling
	if not landed {peelout_charge = 0; return player_is_falling();}
	// slide if moving too slow
	if relative_angle>=45 and relative_angle<=315
	{
	    // if not at gravity angle, fall
	    if relative_angle>=90 and relative_angle<=270 return player_is_falling(); else return player_is_running();
	}
	// launch
	if not input_check(cUP)
	{
	    // chrono time travel on a full charge
	    // The last 2 levels don't have pasts, so no time travel in
	    // Planetary Panic Zone (PP1, PP2) or Sunken Saucer (SS1).
	    // This could be enhanced later.
	    if peelout_charge>=30 && specialForm >= 2 && room!=PP1 && room!=PP2 && room!=SS1
	    {
	        // match nearest spawn by position in the opposite timeline
	        objProgram.spawn_by_position = true;
	        objProgram.spawn_pos_x = x;
	        objProgram.spawn_pos_y = y;
	        objProgram.spawn_time = objLevel.timer;
	        objProgram.time_traveling = facing;
	        peelout_charge = 0;
	        // camera
	        camera.alarm[0] = 128;
	        // audio
	        var _chant = sndChantPast;
	        if (objProgram.in_past) {
	            _chant = sndChantFuture;
	        }
	        var _locChantStream = tr_stream_loc_sound(_chant);
	        if (_locChantStream) {
	            with (objResources) {
	                chantAsset = _locChantStream;
	                chantInstance = play_sfx(_locChantStream, 1);
	            }
	        }
	        else {
	            play_sfx(_chant, 1);
	        }
	        // time travel
	        return player_is_exiting();
	    }
	    // launch if we're fully charged
	    if peelout_charge>=30
	    {
	        // release charge
	        xspeed = facing*12;
	        peelout_charge = 0;
	        // spindash sound
	        play_sfx(sndSpinDash, 1);
	        // run
	        return player_is_running();
	    }
	    // stop if not charged enough
	    if peelout_charge<16
	    {
	        // release charge
	        peelout_charge = 0;
	        // spindash sound
	        animation_new = "peelout_end";
	        // stand
	        return player_is_standing();
	    }
	    // chrono partial charge launches normally
	    if specialForm >= 2
	    {
	        xspeed = facing*12;
	        peelout_charge = 0;
	        play_sfx(sndSpinDash, 1);
	        return player_is_running();
	    }
	}
	// charging
	peelout_charge += 1;
	//rumble
	rumble(rumble_short_weakest);



}
