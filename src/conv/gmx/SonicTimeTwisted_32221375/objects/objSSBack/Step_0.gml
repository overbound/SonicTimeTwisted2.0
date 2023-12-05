if shake == true {
    screen_shake();
    
    if !audio_is_playing(sndScreenShake) { play_sfx(sndScreenShake, 0); }
}

