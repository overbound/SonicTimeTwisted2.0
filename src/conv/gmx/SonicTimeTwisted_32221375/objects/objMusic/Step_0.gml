/// @description  Handle music state(s)
/// @param s

/*
    A little warning:
    
    - This code was "nasty made in a rush - (c) Overbound" for v1.0.4's original release.
    - Then it was improved a little bit by me (nik) by making it more readable (did not make it more stable)
    - And now you're here, in it's v1.1.2 implementation, with a fourth state variable just to fix effect<->jingle stacking ;-;
      that fourth variable is queuedState, it holds the state that should be resumed after both jingle and effect stop.
      It's always BOSS_LOOP/INTRO or MUSIC_LOOP/INTRO, it can never be SILENCE, if it is, priorityMusicState will be used.
    
    Only proceed if you're thy braveful and thy mightful
    
    - Nikita Krapivin.
*/

switch (state) { // MUSIC_STATE.
    case MUSIC_STATE.SILENCE: // silence
        // Do nothing.
        break;
    case MUSIC_STATE.MUSIC_INTRO: // Play Music Intro
        if (!audio_is_playing(musicIntro)) {
            play_music_loop(musicLoopAsset, 0);
        }
        break;
    case MUSIC_STATE.MUSIC_LOOP: // Play Music Loop
        if (!audio_is_playing(musicLoop)) {
            play_music_loop(musicLoopAsset, 0);
        }
        break;
    case MUSIC_STATE.BOSS_INTRO: // Play Boss Intro
        if (!audio_is_playing(bossIntro)) {
            play_boss_loop(bossLoopAsset, 0);
        }
        break;
    case MUSIC_STATE.BOSS_LOOP: // Play Boss Loop
        if (!audio_is_playing(bossLoop)) {
            play_boss_loop(bossLoopAsset, 0);
        }
        break;
    case MUSIC_STATE.JINGLE: // Play Jingle
        if (!audio_is_playing(musicJingle)) {
            var pstate = priorityMusicState;
            if (queuedState != MUSIC_STATE.SILENCE) {
                pstate = queuedState;
                queuedState = MUSIC_STATE.SILENCE;
            }
            else if (statePrevious != MUSIC_STATE.JINGLE) {
                pstate = statePrevious;
            } 
            
            play_previous(pstate);
        }
        break;
    case MUSIC_STATE.EFFECT: // Play Effect
        var levelHandle = noone;
        if (instance_exists(objLevel)) {
            levelHandle = objLevel;
        } else if (instance_exists(objSSLevel)) {
            levelHandle = objSSLevel;
        }
        
        if (instance_exists(levelHandle)) { 
            if (!audio_is_playing(musicEffect) && !levelHandle.cleared) {
                if (statePrevious == MUSIC_STATE.JINGLE && audio_is_playing(musicJingle)) {
                    audio_sound_gain(musicJingle, bgmGain / 100, 200);
                    state = MUSIC_STATE.JINGLE;
                    break;
                }
                else {
                    var pstate = priorityMusicState;
                    // never ever play an effect after an effect, effects should NEVER stack.
                    // oh also guard from SILENCE states since drowning may trigger a silence state when quitting.
                    // (drowning is always supposed to restart the level OST, since resume is set to false there)
                    if (queuedState != MUSIC_STATE.SILENCE) {
                        pstate = queuedState;
                        queuedState = MUSIC_STATE.SILENCE;
                    }
                    else if (statePrevious != MUSIC_STATE.SILENCE && statePrevious != MUSIC_STATE.EFFECT) {
                        pstate = statePrevious;
                    }
                    
                    play_previous(pstate);
                }
            }
       }
       break;
}

/* */
/*  */
