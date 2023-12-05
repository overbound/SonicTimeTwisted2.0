/// @description  State Machine
switch state {
case 0:
    alarm[0] = 150;
    
break;
case 1: // target player
if instance_exists(objLevel.player[0]) {
    if x > objLevel.player[0].x+2 {
    
        x-=2;
    
    } else if x < objLevel.player[0].x -2 {
    
        x +=2;
    
    } 
    
    if alarm[0] == -1 { 
        state = 2;
        laser.state=1;
        play_sfx(sndEggWalkerFire, 1);
    }
}
break;
case 2: // fire
    if laser.state == 2 {
    if instance_exists(objLevel.player[0]) {
        if x > objLevel.player[0].x {
        
            state = 3;
        
        } else {
        
            state =4;
        
        }
    }
    }
break;
case 3: // move w/ laser left
     screen_shake();
     if !audio_is_playing(sndQuake)
        play_sfx(sndQuake, 12);
    x-=2;
    if instance_exists(objLevel.player[0]) {
        if x < objLevel.player[0].camera.left + 64{
            state = 5;
        }
    }
break;
case 4: // move w/ laser right
    x+=2;
    
     screen_shake();
     if !audio_is_playing(sndQuake)
        play_sfx(sndQuake, 12);
    
    if instance_exists(objLevel.player[0]) {
        if x > objLevel.player[0].camera.right - 64{
            state = 5;        
        }
    }
break;
case 5:

    laser.state = 3;
    state=6;

break;
case 6:
if laser.state == 0 {
    state=7;
}
break;
case 7: // move back to center, wait
    if x > objMetallixController.x+2 {
    
        x-=2;
    
    } else if x < objMetallixController.x -2 {
    
        x +=2;
    
    } else  { 
        alarm[0] = 300;
        
        if objGameData.character_id[0] == 3
            alarm[0] = 420;
            
        state = 8;
    } 
break;
case 8:
    if alarm[0] == 0 {
    
        state=9;
        alarm[0] = 300;
    
    }
break;
case 9:
 screen_shake();
 if !audio_is_playing(sndQuake)
    play_sfx(sndQuake, 12);
    if (objScreen.image_index mod 20 == 0) {
        
        instance_create(objMetallixController.x,objMetallixController.y,objUFOAttackDD);
    
    }
    
    if alarm[0]==0 {
        state=1;
        play_sfx(sndEggWalkerCharge, 1);
        alarm[0] = 150;
    }
break;
case 10:
    if y < __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 )*0.5)-32 {
        y+=2;
    }
    image_angle+=20;
break;
}

/// check if should destroy
if state <10  {
    if head.life <= 0 {
        if !audio_is_playing(sndQuake) {
            play_sfx(sndQuake, 2);
        }
    
        with head {
            speed=6;
            direction=120;
            gravity=0.25;
            alarm[1]=120;
        }
        
        alarm[2]=10;
        state=10;
        speed=0;
        
        with objUFOAttackDD reaction_script=noone;
        with objMetallixPlatformHarmful reaction_script=noone;
        with objMetallixLaser instance_destroy();
        stop_all_music(false);
        with objLevel.player[0] {
        state = player_state_standby;
        }
    }
    
}

