/// @description play_music_intro(song, position)
/// @param song
/// @param  position
function play_music_intro(argument0, argument1) {
	var song = argument0;
	var position = argument1;
	stop_all_music(false);
	with (objMusic) {
	    musicIntroAsset = song;
	    musicIntro = audio_play_sound(musicIntroAsset, 20, false);
	    audio_sound_gain(musicIntro, bgmGain / 100, 0);
	    audio_sound_set_track_position(musicIntro, position);
	    state = MUSIC_STATE.MUSIC_INTRO;
	    priorityMusicState = state;
	    currentMusic = musicIntro;
	}



}
