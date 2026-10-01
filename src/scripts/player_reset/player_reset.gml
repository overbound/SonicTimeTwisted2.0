function player_reset() {
	// player_reset()
	// clear rings
	objGameData.rings[0] = 0;
	// lose a life
	if not (/*debug_mode*/ false or instance_exists(objCutscene)) {
		if(LIVES_MODE_IS_CLASSIC)
		{
		    objGameData.player_lives[player_id] -= 1;
		    save_lives(objGameData.player_lives[player_id]);
		}
		else if(LIVES_MODE_IS_ORIGINS)
		{
			save_coins(objGameData.player_coins[player_id]);
		}
		stt_save_files();
	}
	// handle lives based on mode
	/*switch objProgram.game_mode
	{
	case 1: // single player*/
	    // are we player one?
	    if(player_id == 0)
	    {
	        // stop everything
	        objLevel.timer_enabled = false;
	        objLevel.cleared = false;
		    // did we lose all our lives?
		    if((LIVES_MODE_IS_CLASSIC && objGameData.player_lives[player_id] > 0) || LIVES_MODE_IS_ORIGINS)
			{
		        objLevel.reseting = 60;
		    }
		    else if(LIVES_MODE_IS_CLASSIC && objGameData.player_lives[player_id] == 0)
			{
		        instance_create(0, 0, objGameOver);
		    }
	    }
	    //with objMonitorBroken { instance_change(objMonitor,false); }
	    // remove the player
	    instance_destroy();
	   // break;
	/*
	case 2:
	    // teleport to spawn point
	    player_is_reset();
	}*/



}
