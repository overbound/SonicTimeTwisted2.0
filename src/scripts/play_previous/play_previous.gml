/// @description play_previous(statePrevious,position)
/// @param statePrevious
/// @param position
function play_previous(_statePrevious, position = music_get_previous_position(_statePrevious)) {
	with (objMusicNew) {
	    switch (_statePrevious) {
	        case states_music.STATE_SILENCE: // silence
	            // Do nothing.
	            break;
	        case states_music.STATE_MUSIC: // Play Music
	            play_music(musicAsset, position);
	            break;
	        case states_music.STATE_BOSS: // Play Boss
	            play_boss(bossAsset, position);
	            break;
	        case states_music.STATE_JINGLE: // Play Jingle
	            play_jingle(musicJingleAsset, true);
	            break;
	        case states_music.STATE_EFFECT: // Play Effect
	            play_effect(musicEffectAsset, true);
	            break;
	    }
	}



}
