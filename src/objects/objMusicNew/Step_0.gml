/// @description Update Music Object

	//Set up Audio States
	switch(state)
	{
		//Silence
		case states_music.STATE_SILENCE:
		{
			show_debug_message("what? you thought there's music here?")
		}
		break;
		
		//Main Music
		case states_music.STATE_MUSIC:
		{
			if(musicAsset != -1)
			{
				if(!audio_is_playing(musicMain))
				{
					play_boss(musicAsset, 0);
				}
				else if(audio_is_playing(musicMain))
				{
					audio_sound_loop_start(musicMain, musicLoopStart);
					if(musicLoopEnd > 0)
					{
						audio_sound_loop_end(musicMain, musicLoopEnd);
					}
				}
			}
		}
		break;
		
		//Boss
		case states_music.STATE_BOSS:
		{
			if(bossAsset != -1)
			{
				if(!audio_is_playing(bossMain))
				{
					play_boss(bossAsset, 0);
				}
				else if(audio_is_playing(bossMain))
				{
					audio_sound_loop_start(bossMain, bossLoopStart);
					if(bossLoopEnd > 0)
					{
						audio_sound_loop_end(bossMain, bossLoopEnd);
					}
				}
			}
		}
		break;
		
		//Jingle Music
		case states_music.STATE_JINGLE:
		{
	        if (!audio_is_playing(musicJingle)) {
	            var pstate = priorityMusicState;
	            if (queuedState != states_music.STATE_SILENCE) {
	                pstate = queuedState;
	                queuedState = states_music.STATE_SILENCE;
	            }
	            else if (statePrevious != states_music.STATE_JINGLE) {
	                pstate = statePrevious;
	            } 
            
	            play_previous(pstate);
	        }
			else if(audio_is_playing(musicJingle))
			{
				audio_sound_loop_start(musicJingle, jingleLoopStart);
				if(jingleLoopEnd > 0)
				{
					audio_sound_loop_end(musicJingle, jingleLoopEnd);
				}
			}
		}
        break;
		
	    //Effect State
		case states_music.STATE_EFFECT:
		{
	        var levelHandle = noone;
	        if (instance_exists(objLevel)) {
	            levelHandle = objLevel;
	        } else if (instance_exists(objSSLevel)) {
	            levelHandle = objSSLevel;
	        }
        
	        if (instance_exists(levelHandle)) { 
	            if (!audio_is_playing(musicEffect) && !levelHandle.cleared)
				{
	                if (statePrevious == states_music.STATE_JINGLE && audio_is_playing(musicJingle)) {
	                    audio_sound_gain(musicJingle, bgmGain / 100, 200);
	                    state = states_music.STATE_JINGLE;
	                    break;
	                }
	                else {
	                    var pstate = priorityMusicState;
	                    // never ever play an effect after an effect, effects should NEVER stack.
	                    // oh also guard from SILENCE states since drowning may trigger a silence state when quitting.
	                    // (drowning is always supposed to restart the level OST, since resume is set to false there)
	                    if (queuedState != states_music.STATE_SILENCE) {
	                        pstate = queuedState;
	                        queuedState = states_music.STATE_SILENCE;
	                    }
	                    else if (statePrevious != states_music.STATE_SILENCE && statePrevious != states_music.STATE_EFFECT) {
	                        pstate = statePrevious;
	                    }
                    
	                    play_previous(pstate);
	                }
	            }
				else if(audio_is_playing(musicEffect))
				{
					audio_sound_loop_start(musicEffect, effectLoopStart);
					if(effectLoopEnd > 0)
					{
						audio_sound_loop_end(musicEffect, effectLoopEnd);
					}
				}
	       }
		}
	    break;
	}
