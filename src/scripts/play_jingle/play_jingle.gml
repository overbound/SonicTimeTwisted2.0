/// @description play_jingle(song, resume)
/// @param song
/// @param  resume
function play_jingle(song, resume) {
	with (objMusicNew) {
	    stop_sound(musicJingle);
	    musicJingle = -1;
	    musicJingleAsset = song;
    
	    // cancel any queued state when not supposed to resume.
	    if (!resume) {
	        queuedState = states_music.STATE_SILENCE;
	    }
    
	    if (state == states_music.STATE_EFFECT) {
	        if (resume && statePrevious != states_music.STATE_EFFECT && statePrevious != states_music.STATE_JINGLE) {
	            queuedState = statePrevious;
	        }
        
	        musicJingle = audio_play_sound(musicJingleAsset, 20, false);
	        audio_sound_gain(musicJingle, 0, 0);
	        statePrevious = states_music.STATE_JINGLE;
	        music_reset_previous_position();
	    } else if (state == states_music.STATE_JINGLE) {
	        musicJingle = audio_play_sound(musicJingleAsset, 20, false);
	        audio_sound_gain(musicJingle, bgmGain / 100, 200);
	        currentMusic = musicJingle;
	    } else {
	        stop_all_music(resume);
	        musicJingle = audio_play_sound(musicJingleAsset, 20, false);
	        audio_sound_gain(musicJingle, bgmGain / 100, 200);
	        state = states_music.STATE_JINGLE;
	        currentMusic = musicJingle;
	    }
	}




}
