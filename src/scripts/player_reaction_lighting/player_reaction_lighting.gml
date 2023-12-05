function player_reaction_lighting(argument0) {
	// player_reaction_lighting(local_id)
	// flame shield is immune
	if shield_type==2 return false;
	// get hurt
	return player_reaction_harmful(argument0);



}
