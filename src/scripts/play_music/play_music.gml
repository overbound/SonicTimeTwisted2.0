/// @description play_music(song, position)
/// @param song
/// @param position
function play_music(song, position){

	//Stop All Music
	stop_all_music(false);
	
	//Set Up Boss Music
	with(objMusicNew)
	{
		musicAsset = song; //Set Song
		musicMain = audio_play_sound(musicAsset, 20, true); //Play it.
		audio_sound_gain(musicMain, bgmGain / 100, 0); //Set Audio Volume.
	    audio_sound_set_track_position(musicMain, position); //Set Position (if it exists)
	    state = states_music.STATE_MUSIC; //Set Music State.
	    currentMusic = musicMain; //Set Current Music to the Boss.
	}

}