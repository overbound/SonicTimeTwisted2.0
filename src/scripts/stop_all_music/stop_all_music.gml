/// @description stop_all_music(resume, stopEffects)
/// @param resume
/// @param  stopEffects
function stop_all_music(resume, stopEffects = true) {
	if (argument_count <= 0) {
	    show_error("stop_all_music: Not enough arguments, expected at least one.", false);
	    return false;
	}
	
	with (objMusicNew) {
	    if (resume) {
	        statePrevious = state;
	        music_set_previous_position();
	    }
	    else {
	        statePrevious = states_music.STATE_SILENCE;
	        music_reset_previous_position();
	        queuedState = statePrevious;
	    }
	    state = states_music.STATE_SILENCE;
    
	    switch (statePrevious) {
	        case states_music.STATE_SILENCE: // silence
	            stop_sound(currentMusic);
	            currentMusic = -1;
	            stop_sound(musicMain);
	            musicMain = -1;
	            stop_sound(bossMain);
	            bossMain = -1;
	            stop_sound(musicJingle);
	            musicJingle = -1;
            
	            if (stopEffects) {
	                stop_sound(musicEffect);
	                musicEffect = -1;
	            }
	            break;
	        case states_music.STATE_MUSIC: // Play Music
	            stop_sound(musicMain);
	            musicMain = -1;
	            break;
	        case states_music.STATE_BOSS: // Play Boss
	            stop_sound(bossMain);
	            bossMain = -1;
	            break;
	        case states_music.STATE_JINGLE: // Play Jingle
	            stop_sound(musicJingle);
	            musicJingle = -1;
	            break;
	        case states_music.STATE_EFFECT: // Play Effect
	            if (stopEffects) {
	                stop_sound(musicEffect);
	                musicEffect = -1;
	            }
	            break;
	    }
	}



}
