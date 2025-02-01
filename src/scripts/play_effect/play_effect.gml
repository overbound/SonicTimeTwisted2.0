/// @description play_effect(song, resume)
/// @param song
/// @param resume
function play_effect(song, resume) {
	with (objMusicNew) {
	    // cancel any queued state when not supposed to resume.
	    if (!resume) {
	        queuedState = states_music.STATE_SILENCE;
	    }

	    if (state == states_music.STATE_JINGLE) {
	        if (resume && statePrevious != states_music.STATE_EFFECT && statePrevious != states_music.STATE_JINGLE) {
	            queuedState = statePrevious;
	        }
        
	        statePrevious = state;
	        music_reset_previous_position();
	        audio_sound_gain(musicJingle, 0, 200);
	    } else if (state == states_music.STATE_EFFECT) { 
	        stop_sound(musicEffect);
	        musicEffect = -1;
	        musicEffectAsset = -1;
	    } else {
	        stop_all_music(resume);
	    }
    
	    musicEffectAsset = song;
	    musicEffect = audio_play_sound(musicEffectAsset, 20, false);
	    audio_sound_gain(musicEffect, bgmGain / 100, 0);
	    // because effects stop currentMusic, they should respect the BGM gain.
	    state = states_music.STATE_EFFECT;
	    currentMusic = musicEffect;
	}



}
