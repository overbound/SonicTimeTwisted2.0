function player_add_score(argument0) {
	//player_set_score(score)
	with(objGameData)
	{
	    player_score[0] += argument0;
	    if(player_score[0] div 50000 == scoreLiveCounter)
		{
	        scoreLiveCounter++;
	        if(livesMode == LIVES_CLASSIC)
			{
				player_get_lives(1);
			}
			else if(livesMode == LIVES_ORIGINS) 
			{
				player_get_coins(1);
			}
	    }
	}



}
