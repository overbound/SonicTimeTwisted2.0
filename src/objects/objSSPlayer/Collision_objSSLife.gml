if (!onGround) exit;
switch other.image_index
 {
     case 2:
         play_sfx(sndRing, 0);
         rings +=10;
         if (rings mod 100 <= 9) {
             if(LIVES_MODE_IS_CLASSIC)
			 {
				 player_get_lives(1); 
			 }
			 else if(LIVES_MODE_IS_ORIGINS)
			 {
				 player_get_coins(1); 
			 }
         }
         break;
     case 4: play_sfx(sndRockSmash,1); objProgram.temp_shield = other.image_index-4; break;
     case 5: play_sfx(sndShieldBubble,1);  objProgram.temp_shield = other.image_index-4; break;
     case 6: play_sfx(sndShieldLightning,1);  objProgram.temp_shield = other.image_index-4; break;
     case 7: play_sfx(sndShieldFlame,1);  objProgram.temp_shield = other.image_index-4; break;
     case 8: play_sfx(sndShieldIce,1); objProgram.temp_shield = other.image_index-4; break;
     case 9: play_sfx(sndShieldWind,1); objProgram.temp_shield = other.image_index-4; break;
     default:
	 {
		 if(LIVES_MODE_IS_CLASSIC)
		 {
			 player_get_lives(1); 
		 }
		 else if(LIVES_MODE_IS_ORIGINS)
		 {
			 player_get_coins(1); 
		 }
	 }
	 break;
 }
with other instance_destroy();
rumble(rumble_short_weakest);

