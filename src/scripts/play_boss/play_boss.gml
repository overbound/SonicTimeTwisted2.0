/// @description play_boss(song, position)
/// @param song
/// @param position
function play_boss(song, position){

	//Stop All Music
	stop_all_music(false);
	
	//Set Up Boss Music
	with(objMusicNew)
	{
		bossAsset = song; //Set Song
		bossMain = audio_play_sound(bossAsset, 20, true); //Play it.
		audio_sound_gain(bossMain, bgmGain / 100, 0); //Set Audio Volume.
	    audio_sound_set_track_position(bossMain, position); //Set Position (if it exists)
	    state = states_music.STATE_BOSS; //Set Music State.
	    currentMusic = bossMain; //Set Current Music to the Boss.
	}

}