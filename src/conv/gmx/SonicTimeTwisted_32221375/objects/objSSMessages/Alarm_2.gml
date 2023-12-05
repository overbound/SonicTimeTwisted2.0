/// @description  Countdown at the beginning of the race
if title_word < 4
{
    title_word += 1;
    if (title_word <= 3)
    {
        play_sfx(sndDingOpen, 1);
        alarm_set(2, 44);
    }
    else
    {
        // Start Race
        play_sfx(sndDingEnd, 1);
        if (!global.special_level_music_played) {
            with (objMusic) {
                if (!audio_is_playing(musicIntro) && !audio_is_playing(musicLoop)) {
                    play_music_intro(musicIntroAsset, 0);
                    global.special_level_music_played = true;
                }
            }
        }
        
        alarm[0] = 120;
        flash=true;
        with objSSLevel { started = true; }
        with objSSPlayer { started = true; }
        /// Enable controls
        set_input_enabled(true);
    }
}

