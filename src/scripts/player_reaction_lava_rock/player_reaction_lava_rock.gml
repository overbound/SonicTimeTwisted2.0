function player_reaction_lava_rock(argument0) {
	// player_reaction_lava_rock(local_id)
	with argument0 {
	    y+=1;
	    alarm[0]=3;
	}

	return false;
}
