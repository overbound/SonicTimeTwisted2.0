function player_reaction_TT1_p_enter_room(argument0) {
	//player_reaction_TT1_p_enter_room
	if objProgram.temp_xview_offset!=0 {
	    xspeed=objProgram.temp_xspeed;
	    yspeed=objProgram.temp_yspeed;
	    state=objProgram.temp_state;
	    animation=objProgram.temp_animation;
	    spinning=objProgram.temp_spinning;
	    timeline_position=objProgram.temp_timeline_position;
	    x=objProgram.temp_x;
	    __view_set( e__VW.YView, 0, y-objProgram.temp_yview_offset );
	    __view_set( e__VW.XView, 0, x-objProgram.temp_xview_offset );
	    if (state == player_state_fly) {
	        alarm[0] = objProgram.temp_fly_value;
	    } else if (state == player_state_glide) {
	        glide_speed = objProgram.temp_fly_value;
	    }
	    objProgram.temp_fly_value = 0;
	    objProgram.temp_xview_offset = 0;
	}
	with objLevel started = true;
	with objTitlecard mode = 3;
	if !landed {
	    xspeed = 0;
	    if (state != player_state_fly) {
	        yspeed-=.05;
	    }
	} else {
	   // animate
	    image_angle = 0;
	    animation_new = "idle";
	    // states and flags
	    state = player_state_standby;
	    jump_action = false;
    
	    // start timer
	    objLevel.timer_enabled = true;
	    objLevel.started = false;
    
	    // movement and collision
	    xspeed = 0;
	    // setup titlecard
	    with instance_create(0, 0, objTitlecard)
	    {
	        get_titlecard_array(room, id);
	        event_perform(ev_other, ev_room_start);
	        mode = 1;
	    }
	    with argument0 instance_destroy();
	}
	return false;
}
