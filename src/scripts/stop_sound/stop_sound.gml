/// @description stop_sound(sndIndex)
/// @param sndIndex
function stop_sound(argument0) {
	var sndIndex = argument0;

	if (sndIndex < 0) {
	    if (debug_mode) {
	        show_debug_message("Tried to stop invalid sound. " + string(sndIndex));
	    }
    
	    return false;
	}
	else {
	    audio_stop_sound(sndIndex);
	    return true;
	}



}
