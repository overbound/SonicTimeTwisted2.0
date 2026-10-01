function player_get_coins(coins) {
	// player_get_coins(coins)
	 //   stop_level_music();
	if(instance_exists(objLevel))
	{
		play_effect(sndCoin, !objLevel.cleared);
	}
	else
	{
		play_effect(sndCoin, true);
	}
	
	repeat(coins)
	{
	    if (objGameData.player_coins[0]>=999) return 0;
	    objGameData.player_coins[0] += 1;
	}
	save_coins(objGameData.player_coins[0]);
	stt_save_files();



}
