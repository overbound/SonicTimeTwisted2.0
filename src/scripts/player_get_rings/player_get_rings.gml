function player_get_rings(argument0) {
	// player_get_rings(rings)
	stop_sound(sndRing);
	play_sfx(sndRing, 1);
	repeat argument0
	{
	    if (objGameData.rings[0]>=999) return 0;
	    objGameData.rings[0] += 1;
	    if not (objGameData.rings[0] mod 100) {
	        /*
	        if not superform {
	            player_get_lives(1);
	        } else
	        */
			//if(LIVES_MODE_IS_CLASSIC)
			//{
		        if (objGameData.rings[0] == 100 && objLevel.ringLifeCounter < 1)
		        || (objGameData.rings[0] == 500 && objLevel.ringLifeCounter < 5)
		        || (objGameData.rings[0] == 400 && objLevel.ringLifeCounter < 4)
		        || (objGameData.rings[0] == 300 && objLevel.ringLifeCounter < 3)
		        || (objGameData.rings[0] == 200 && objLevel.ringLifeCounter < 2) {
					if(LIVES_MODE_IS_CLASSIC) 
					{
						player_get_lives(1);
					}
					else if(LIVES_MODE_IS_ORIGINS)
					{
						player_get_coins(1);
					}
		            objLevel.ringLifeCounter+=1;
		        } 
			//}
	    }
	}



}
