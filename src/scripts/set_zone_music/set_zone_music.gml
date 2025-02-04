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
        
	        // Raging Ruins
	        case RR1_f: // Future
	        case RR2_f: {
	            musicAsset = bgmRRFuture;
				musicLoopStart = 9.603;
	            return true;
	        }
        
	        case RR1_p: // Past
	        case RR2_p: {
	            musicAsset = bgmRRPast;
				musicLoopStart = 2.805;
	            return true;
	        }
        
	        // Frigid Fortress
	        case FF1_f: // Future
	        case FF2_f: {
	            musicAsset = bgmFFFuture;
	            return true;
	        }
        
	        case FF1_p: // Past
	        case FF2_p: {
	            musicAsset = bgmFFPast;
				musicLoopStart = 7.200;
	            return true;
	        }
        
	        // Viridian Valley
	        case VV1_f: // Future
	        case VV2_f: {
	            musicAsset = bgmVVFuture;
				musicLoopStart = 3.000;
	            return true;
	        }
        
	        case VV1_p: // Past
	        case VV2_p: {
	            musicAsset = bgmVVPast;
				musicLoopStart = 15.000;
	            return true;
	        }
        
	        // Drifting Dynamo
	        case DD1_f: // Future
	        case DD2_f: {
	            musicAsset = bgmDDFuture;
				musicLoopStart = 4.672;
	            return true;
	        }
        
	        case DD1_p: // Past
	        case DD2_p: {
	            musicAsset = bgmDDPast;
				musicLoopStart = 33.105;
	            return true;
	        }
        
	        // Tidal Tubes
	        case TT1_f: // Future
	        case TT2_f: {
	            musicAsset = bgmTTFuture;
				musicLoopStart = 4.653;
	            return true;
	        }
        
	        case TT1_p: // Past
	        case TT2_p: {
	            musicAsset = bgmTTPast;
				musicLoopStart = 34.900;
	            return true;
	        }
        
	        // Sunken Saucer
	        case SS1: {
	            if (objProgram.spawn_tag == 25) {
	                musicAsset = bgmSS2;
					musicLoopStart = 10.430;
	            }
	            else {
	                musicAsset = bgmSS1;
					musicLoopStart = 13.851;
	            }
	            return true;
	        }
        
	        // Planetary Panic
	        case PP1: {
	            musicAsset = bgmPP1;
				musicLoopStart = 15.996;
	            return true;
	        }
        
	        case PP2: {
	            musicAsset = bgmPP2;
				musicLoopStart = 21.000;
	            return true;
	        }
        
	        // Galanik Panic (Galanik 1 is used as a boss track)
	        case MM1: {
	            musicAsset = bgmGalanik2;
				musicLoopStart = 24.000;
	            return true;
	        }
        
	        // Save Select / Special Stage Results
	        case ss_results_screen:
	        case saveSelect: {
	            musicAsset = bgmSaveScreen;
				musicLoopStart = 7.031;
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
	            musicAsset = bgmSpecialFuture;
				musicLoopStart = 12.753;
	            return true;
	        }
        
	        case SSP1: // Past
	        case SSP2:
	        case SSP3:
	        case SSP4:
	        case SSP5:
	        case SSP6:
	        case SSP7: {
	            musicAsset = bgmSpecialPast;
				musicLoopStart = 14.554;
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
