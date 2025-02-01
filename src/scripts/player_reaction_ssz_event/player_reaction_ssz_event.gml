function player_reaction_ssz_event(argument0) {
	//player_reaction_ssz_event(local_id)
	with objWater instance_destroy();
	objLevel.player[0].camera.left = argument0.bbox_left;
	objLevel.player[0].camera.right = argument0.bbox_right;
	objLevel.player[0].camera.bottom= argument0.bbox_bottom;
	with objSSController state = 1;
	objSSMetalCut.alarm[0]=228;
	play_music(bgmSS2Loop,0);
	objMusicNew.musicAsset = bgmSS2Loop; //TODO: Add Starting Loop Point Value here
	with argument0 instance_destroy();

	return false;
}
