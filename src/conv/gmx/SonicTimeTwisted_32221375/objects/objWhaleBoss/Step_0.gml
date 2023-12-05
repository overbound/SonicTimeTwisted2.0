// do nothing if can't find controller
    if !instance_exists(objTTBossController) {
        exit;
    }

switch state {
case 0: // Time before first jump - not using a timer because it's a one-time thing
    jump_timer -= 1;
    
    with objLevel.player[0] {
        if other.jump_timer <= 0 {
            other.state = 1; 
        }
    }
break;
case 1: // Jump start left
    remove=0;
    direction = 278; // 278
    speed = -6.5;
    sprite_index = sprWhaleBossJump;
    jaw.sprite_index=sprWhaleBossJaw;
    state = 2;
    play_sfx(sndWaterBumper,1);
    with objLevel.player[0] {
        other.x = objTTBossController.x + 500; //500
        other.y = objTTBossController.y + 340; //320
    }
break;
case 2: // Jump Left
    direction +=.75;
    if y > objTTBossController.y + sprite_height+256{
    
        state = 3;
    
    }
break;
case 3: // Start Move Right
    x = objTTBossController.x - 500;
    y = objTTBossController.y + 94;
    state = 4;
    speed = 0;
    direction=0;
    sprite_index = sprWhaleBoss;
    image_xscale = -1;
    play_sfx(sndWaterBumper,1);
break;
case 4: // Move Right
    x+=8;
    
    if x > objTTBossController.x + 500 {
    
        state = 5;
    
    }
break;
case 5: // Start Move Left
    x = objTTBossController.x + 500;
    y = objTTBossController.y + 94;
    state = 6;
    speed = 0;
    direction=0;
    sprite_index = sprWhaleBoss;
    image_xscale = 1;
    play_sfx(sndWaterBumper,1);
break;
case 6: // Move Left
    x-=8;
    
    if x < objTTBossController.x - 500 {
    
        state = 7;
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*.5+16,objWhaleBossTowardsCam);
    }
break;
case 7:
    // Do nothing wait for head on attack to end...
break;
case 8: // Jump start Left
    direction = 278; // 278
    speed = -6.5;
    sprite_index = sprWhaleBossJump;
    state = 9;
    image_xscale = 1;
    image_yscale = 1;
    play_sfx(sndWaterBumper,1);
    with objLevel.player[0] {
    other.x = objTTBossController.x + 380; //500
    other.y = objTTBossController.y + 320; //340
    }
break;
case 9: // Jump Left
    direction +=1;
    if y > objTTBossController.y + sprite_height+256{
    
        state = 10;
    
    }
break;
case 10: // Jump start Right
    direction = 262; // 278
    speed = -6.5;
    sprite_index = sprWhaleBossJumpInvert;
    state = 11;
    image_xscale = 1;
    image_yscale = 1;
    play_sfx(sndWaterBumper,1);
    jaw.sprite_index=sprWhaleBossJawInvert
    with objLevel.player[0] {
    other.x = objTTBossController.x - 380; //500
    other.y = objTTBossController.y + 320; //340
    }
break;
case 11: // Jump Right
    direction -=1;
    if y > objTTBossController.y + sprite_height+256{
    
        state = 1;
    
    }
break;
case 12:
    if y > 1164{
    
    gravity=0;
    speed=0;
    if !audio_is_playing(sndSplash)
        play_sfx(sndSplash,4);
    with objLevel.player[0].camera right=10368;
    state=13;
    
}
 //  with objLevel { stop_level_music() }
break;
case 13:
    gravity=0;
    
break;
}

/// check if should destroy
if jaw.life <= 0 && state <12 {
    with jaw reaction_script=noone;
    with fin instance_destroy();
    alarm[1]=10;
    state=12;
    speed=0;
    if sprite_index==sprWhaleBossJumpInvert {
    sprite_index=sprWhaleBossDamageInvert;
    } else sprite_index=sprWhaleBossDamage;
    
    stop_all_music(false);
} else if state <12 draw_direction=direction;

