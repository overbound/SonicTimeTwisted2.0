function player_get_coins(argument0) {
	// player_get_coins(coins)
	 //   stop_level_music();
	 //if instance_exists(objLevel) {
	 //   if objLevel.cleared
	 //       play_effect(sndLife, false);
	 //   else play_effect(sndLife, true);
	 //}
	 //else play_effect(sndLife, true);
	repeat argument0
	{
	    if (objGameData.player_coins[0]>=999) return 0;
	    objGameData.player_coins[0] += 1;
	}
	save_coins(objGameData.player_coins[0]);
	stt_save_files();



}
