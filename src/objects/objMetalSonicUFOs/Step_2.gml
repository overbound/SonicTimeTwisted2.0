switch state {
case 0: // do nothing
    image_alpha=0;
break;
case 1: // move towards center
    sprite_index=sprMetalFordwardAppear;
    image_index=0;
    state=2;
    play_sfx(sndMetalBolt,1);
break;
case 2:
    reaction_script=player_reaction_harmful;
    image_alpha +=.025;
    if image_alpha >= .5 {
        image_speed=.25;
    } 
    if image_alpha >= 1 {
        state=3;
        sprite_index=sprMetalForward;
        image_index=2;
        image_speed =0;
        alarm[0]=320;
    }
break;
case 3:
    screen_shake();
    
    if !audio_is_playing(sndQuake) {
        play_sfx(sndQuake,0);
    }
    if (objScreen.image_index mod 16 == 0) {
        
        instance_create(objFireFlyBossController.x,objFireFlyBossController.y,objUFOAttack);
    
    }
    
    if alarm[0] == 0 {
        image_speed = -.25;
        with objFireFly state = 7;
        sprite_index=sprMetalFordwardAppear;
        image_index=4;
        state=4;
    }
    
break;
case 4:
    image_alpha -=.05;
    reaction_script=noone;
    if image_alpha <= 0 {
    
        state = 0;
    
    }
    
break;


}

