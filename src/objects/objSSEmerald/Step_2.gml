if z > groundz {
    z-=2;
    if z < groundz {
    
        z = groundz;
    
    }
}
else
if(!chime_played)
{
    stop_all_music(false);
    stop_all_music(false, true);
    if (objProgram.in_past)
        play_jingle(sndSSTimeStone, false);
    else
        play_jingle(sndSSChaosEmerald, false);
    alarm[0] = 150;
    chime_played = true;
    rumble(rumble_short_mid);
}

