function player_is_drop_dashing(){
	//player_is_drop_dashing()
	//states and flags
	spinning = true;
	jump_action = false;
	dropdash_charge = dropdash_charge_max;
	dropDash = true;
	//animate
	animation_new = "drop_dash";
	timeline_speed = 1;
	//sound
	play_sfx(sndDropDash);
}