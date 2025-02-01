/// @description music_set_previous_position([state])
/// @param [state]
function music_set_previous_position() {

	with (objMusicNew) {
	    var _arg_state = statePrevious;
	    if (argument_count > 0) _arg_state = argument[0];
    
	    switch (_arg_state) {
	        case states_music.STATE_SILENCE: {
	            if (debug_mode) {
	                show_debug_message("music_set_previous_position CANNOT GET POS OF SILENCE STATE.");
	                print_callstack();
	            }
	            break;
	        }
        
	        case states_music.STATE_MUSIC: {
	            previousPositionMain = audio_sound_get_track_position(musicMain);
	            break;
	        }
        
	        case states_music.STATE_BOSS: {
	            previousPositionBoss = audio_sound_get_track_position(bossMain);
	            break;
	        }
        
	        case states_music.STATE_JINGLE: {
	            previousPositionJingle = audio_sound_get_track_position(musicJingle);
	            break;
	        }
        
	        case states_music.STATE_EFFECT: {
	            previousPositionEffect = audio_sound_get_track_position(musicEffect);
	            break;
	        }
        
	        default: {
	            show_error("states_music enum argument out of range.", true);
	            break;
	        }
	    }
	}



}
