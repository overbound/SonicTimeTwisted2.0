/// @description  Handle timers
var currentRing = objGameData.rings[0];
// null counters
if sliding sliding -= 1;
if invulnerable invulnerable -= 1;
if ignore_rings ignore_rings -= 1;

// superspeed
if superspeed
{
    superspeed -= 1;
    if not superspeed {player_reset_physics();} // reset music
}

// underwater
if underwater and shield_type!=1 and !objProgram.cutscene
{
    underwater_count -= 1;
    switch underwater_count
    {
        case 1440: case 1140: case 840: play_sfx(sndDrownTimer, 0); break;
        case 660: case 550: case 440: case 330: case 220: case 110:
            play_sfx(sndDrownWarning, 0);
            waterCountTime = 100;
            waterCountDigit = (underwater_count / 110) - 1;
            waterCountAlpha = 0;
            break;
        case 725: if player_id==0 { play_effect(bgmDrowning,0); } break;
        case 0: player_is_drowning(); break;
    }
} else {
    waterCountAlpha = 0;
}

// superform
if superform
{
    if objLevel.stage_timer_active
    {
        superform++;
        // subtract a ring every second
        if (superform >= 61)
        {
            superform = 1;
            objGameData.rings[0] -= 1;
            if objGameData.rings[0]<=0 player_transform(false);
        }
    }
}

/// Update speed cap for analog_controls
used_speed_cap = speed_cap;
if(objProgram.inputManager.analog_applied) {
    if (objProgram.inputManager.analog_d != 0) {
        used_speed_cap = speed_cap * abs(objProgram.inputManager.analog_d);
    }
}


