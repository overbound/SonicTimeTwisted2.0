/// @description music_reset_previous_position([state])
/// @param [state]
function music_reset_previous_position() {

	with (objMusicNew) {
	    var _arg_state = statePrevious;
	    if (argument_count > 0) _arg_state = argument[0];
    
	    switch (_arg_state) {
	        case states_music.STATE_SILENCE: {
	            previousPositionMain = 0;
	            previousPositionBoss = 0;
	            previousPositionJingle = 0;
	            previousPositionEffect = 0;
	            break;
	        }
        
	        case states_music.STATE_MUSIC: {
	            previousPositionMain = 0;
	            break;
	        }
        
	        case states_music.STATE_BOSS: {
	            previousPositionBoss = 0;
	            break;
	        }
        
	        case states_music.STATE_JINGLE: {
	            previousPositionJingle = 0;
	            break;
	        }
        
	        case states_music.STATE_EFFECT: {
	            previousPositionEffect = 0;
	            break;
	        }
        
	        default: {
	            show_error("states_music enum argument out of range.", true);
	            break;
	        }
	    }
	}




}
