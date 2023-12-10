function player_is_drop_dashing(){
	//player_is_drop_dashing()
	//states and flags
	spinning = true;
	jump_action = false;
	dropdash_charge = 20;
	dropDash = true;
	//sound
	if !superform play_sfx(sndDropDash, 0);
	else play_sfx(sndPeeloutRelease);
}