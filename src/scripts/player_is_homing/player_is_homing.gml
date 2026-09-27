function player_is_homing() {
	// player_is_homing()
	// animate
	animation_new = "spin";
	timeline_speed = 1;
	image_angle = 0;
	// states and flags
	spinning = true;
	jumping = false;
	player_in_air();
	// camera
	camera.alarm[0] = 12;
	// shield animation
	shield.image_angle = 0;
	// rumble
	rumble(rumble_short_mid);
	// sound
	play_sfx(sndFlameDash, 0);
	
	if instance_exists(objEnemy)
	{
	    var nearestEnemy = instance_nearest(x,y,objEnemy);
        
	    if nearestEnemy != noone && instance_exists(nearestEnemy) && distance_to_object(nearestEnemy) <= 128
	    {
	        var _check = false;
                
	            try 
	            {
	                with nearestEnemy
	                {
	                    _check = true;
	                }
	            }
	            catch(_yourmom)
	            {
	                score = 0;  
	            }
        
	        if _check
	        {
	            homing_target = nearestEnemy;
	            if state != player_state_shield_homing
	            {
	                ShieldUsable  = false;
				jump_action = false;
	                homing_timer = 0;
				state = player_state_shield_homing;
	            }
	        }
	    }
	} else {
		xspeed = 4*facing;
		yspeed = 0;
	}
}
