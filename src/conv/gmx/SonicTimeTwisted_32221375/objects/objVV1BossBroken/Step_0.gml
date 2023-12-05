/// @description  state machine
switch state {
case 0: // Do Nothing
if image_index >= 2 {
    image_speed = 0;
    image_index+=.25;
}
if image_index == 2.5 {
    image_index=0;
}
    
break;
case 1: // move up
    alarm[0]=-1;
    sprite_index=sprMetalStandup;
    depth = -2048;
    
    if y < ystart -80 {
        
        sprite_index=sprMetalFlying;
        
        if image_speed == 0
            image_index = 1;
            
        image_speed = .5;
        if image_index == 0 {
        
            state = 2;
            alarm[3]=8;
            
        }
        
    } else y-=2;
break;
case 2: // Turn
    sprite_index= sprMetalIdle;;
    image_speed = .5;
    image_index=0;
    state = 3;

break;
case 3: // Init Laugh
    if image_index == 2 {
    
        image_speed = 0;
        state=4;
        alarm[1] = 120;
        play_sfx(sndMetalLaugh,1,true);
    }
    
break;
case 4: //  Laughing
    y += cos(offset)*0.5;
    offset += 0.25;
    if alarm[1]==0 {
        state=5;
        play_sfx(sndExplosionGeneral,2);
    }
    
break;
case 5: // flash intro
    y += cos(offset)*0.5;
    offset += 0.25;
    
    flashOffset+=6;
    image_alpha +=.025;
    if flashOffset >= 352 {
        stop_sound(sndMetalLaugh);
        level_goto_next();
        state=6;
    }
break;
}

/// sound
if !audio_is_playing(sndQuake) && state > 0 {
    play_sfx(sndQuake,10);
}

