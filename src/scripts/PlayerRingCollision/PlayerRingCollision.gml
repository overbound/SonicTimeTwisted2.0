function PlayerRingCollision(argument0) {
	/*
	void PlayerRingCollision()
	*/
	var d, a;
	if (!onGround) || argument0.alarm[0] != -1 exit;
	    rings +=1;
	    stop_sound(sndRing);
	    play_sfx(sndRing, 0);
    
	    with argument0 {
    
	        //instance_destroy();
	        sprite_index=sprRingSparkle;
	        tex = sprite_get_texture(sprite_index, 0);
	        image_speed = 0.1;
	        alarm[0] = 20;
    
	    }
    
	    if(rings mod 100 == 0){
	        if(LIVES_MODE_IS_CLASSIC) 
			{
				player_get_lives(1);
			}
			else if(LIVES_MODE_IS_ORIGINS)
			{
				player_get_coins(1);
			}
	    }
    



}
