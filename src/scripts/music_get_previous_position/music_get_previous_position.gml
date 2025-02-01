/// @description music_get_previous_position([state])
/// @param [state]
function music_get_previous_position() {

	with (objMusicNew) {
	    var _arg_state = statePrevious;
	    if (argument_count > 0) _arg_state = argument[0];
    
	    switch (_arg_state) {
	        case states_music.STATE_SILENCE: {
	            if (debug_mode) {
	                show_debug_message("music_get_previous_position CANNOT GET POS OF SILENCE STATE.");
	                print_callstack();
	            }
	            return 0;
	        }
        
	        case states_music.STATE_MUSIC: {
	            return previousPositionMain;
	        }
        
	        case states_music.STATE_BOSS: {
	            return previousPositionBoss;
	        }
        
	        case states_music.STATE_JINGLE: {
	            return previousPositionJingle;
	        }
        
	        case states_music.STATE_EFFECT: {
	            return previousPositionEffect;
	        }
        
	        default: {
	            show_error("states_music enum argument out of range.", true);
	            return 0;
	        }
	    }
	}



}
