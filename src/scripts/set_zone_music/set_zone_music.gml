/// @description set_zone_music(roomIndex)
/// @param roomIndex
function set_zone_music(roomIndex) {
	with (objMusicNew) {
	    switch (roomIndex) {
	        // Attraction Attack
	        case AA1_f: // Future
	        case AA2_f: {
	            musicAsset = bgmAAFuture;
				musicLoopStart = 20.166;
	            return true;
	        }
        
	        case AA1_p: // Past
	        case AA2_p: {
	            musicAsset = bgmAAPast;
				musicLoopStart = 19.996;
	            return true;
	        }
        
	        // RR
	        case RR1_f: // Future
	        case RR2_f: {
	            musicAsset = bgmRRFutureLoop;
	            return true;
	        }
        
	        case RR1_p: // Past
	        case RR2_p: {
	            musicAsset = bgmRRPastLoop;
	            return true;
	        }
        
	        // FF
	        case FF1_f: // Future
	        case FF2_f: {
	            musicAsset = bgmFFFuture;
	            return true;
	        }
        
	        case FF1_p: // Past
	        case FF2_p: {
	            musicAsset = bgmFFPastLoop;
	            return true;
	        }
        
	        // VV
	        case VV1_f: // Future
	        case VV2_f: {
	            musicAsset = bgmVVFutureLoop;
	            return true;
	        }
        
	        case VV1_p: // Past
	        case VV2_p: {
	            musicAsset = bgmVVPastLoop;
	            return true;
	        }
        
	        // DD
	        case DD1_f: // Future
	        case DD2_f: {
	            musicAsset = bgmDDFutureLoop;
	            return true;
	        }
        
	        case DD1_p: // Past
	        case DD2_p: {
	            musicAsset = bgmDDPastLoop;
	            return true;
	        }
        
	        // TT
	        case TT1_f: // Future
	        case TT2_f: {
	            musicAsset = bgmTTFutureLoop;
	            return true;
	        }
        
	        case TT1_p: // Past
	        case TT2_p: {
	            musicAsset = bgmTTPastLoop;
	            return true;
	        }
        
	        // Sunken Saucer
	        case SS1: {
	            if (objProgram.spawn_tag == 25) {
	                musicAsset = bgmSS2Loop;
	            }
	            else {
	                musicAsset = bgmSS1Loop;
	            }
	            return true;
	        }
        
	        // Planetary Panic
	        case PP1: {
	            musicAsset = bgmPP1Loop;
	            return true;
	        }
        
	        case PP2: {
	            musicAsset = bgmPP2Loop;
	            return true;
	        }
        
	        // MM
	        case MM1: {
	            musicAsset = bgmGalanik2Loop;
	            return true;
	        }
        
	        // Special Stage Result?
	        case ss_results_screen:
	        case saveSelect: {
	            musicAsset = bgmSaveScreenLoop;
	            return true;
	        }
        
	        // Special Stages
	        case SSF1: // Future
	        case SSF2:
	        case SSF3:
	        case SSF4:
	        case SSF5:
	        case SSF6:
	        case SSF7: {
	            musicAsset = bgmSpecialFutureLoop;
	            return true;
	        }
        
	        case SSP1: // Past
	        case SSP2:
	        case SSP3:
	        case SSP4:
	        case SSP5:
	        case SSP6:
	        case SSP7: {
	            musicAsset = bgmSpecialPastLoop;
	            return true;
	        }
        
	        // Error Handler
	        default: {
	            var errmsg = tr_format("Tried to set zone music for an unknown room. (ind=%0,name=%1)", roomIndex, room_get_name(roomIndex));
	            show_error(errmsg, false);
	            return false;
	        }
	    }
	}



}
