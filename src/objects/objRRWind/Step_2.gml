ticks = (ticks + 1) mod interval;
if (ticks > 0) exit;
if not audio_is_playing(sndFireBlow)
{
    play_sfx(sndFireBlow, 4);
}

