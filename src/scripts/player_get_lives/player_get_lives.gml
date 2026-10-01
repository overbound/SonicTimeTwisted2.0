function player_get_lives(lives_amount) {
	// player_get_lives(lives)
	 //   stop_level_music();
	if(instance_exists(objLevel))
	{
	   play_effect(sndLife, !objLevel.cleared);
	}
	else 
	{
		play_effect(sndLife, true);
	}
	
	repeat(lives_amount)
	{
	    if (objGameData.player_lives[0]>=99) return 0;
	    objGameData.player_lives[0] += 1;
	}
	save_lives(objGameData.player_lives[0]);
	stt_save_files();



}
