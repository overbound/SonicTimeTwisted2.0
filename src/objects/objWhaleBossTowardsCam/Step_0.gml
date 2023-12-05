switch state {
case 0: // Move forward
    image_xscale+=.006;
    image_yscale+=.006;
    
    yspeed=+.5;
    
    if y > __view_get( e__VW.YView, 0 )+204 {
    
        state=1;
        screen_shake();
        instance_create(objTTBossController.x-224,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x-112,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+112,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+224,objTTBossController.y-192,objHarmfulBlock);
        play_sfx(sndBreak,0);
    }
break;
case 1: // Move back
    image_xscale-=.00375;
    image_yscale-=.00375;
    screen_shake();
     
    yspeed=-.25;
    
    if y < __view_get( e__VW.YView, 0 )+192 {
        state=2;   
    }
break;
case 2: // Move Forward
    image_xscale+=.006;
    image_yscale+=.006;
    
    yspeed=+.5;
    
    if y > __view_get( e__VW.YView, 0 )+204 {
    
        instance_create(objTTBossController.x-290,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x-145,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+145,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+290,objTTBossController.y-192,objHarmfulBlock);
        state=3;
        play_sfx(sndBreak,0);
    }
break;
case 3: // Move back
    image_xscale-=.00375;
    image_yscale-=.00375;
    screen_shake();
    yspeed=-.25;
    
    if y < __view_get( e__VW.YView, 0 )+192 {
        state=4;
        screen_shake();
    }
break;
case 4: // Move Forward
    image_xscale+=.006;
    image_yscale+=.006;
    
    yspeed=.5;
    
    if y > __view_get( e__VW.YView, 0 )+204 {
    
        screen_shake();
        instance_create(objTTBossController.x-260,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x-160,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x-50,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+50,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+160,objTTBossController.y-192,objHarmfulBlock);
        instance_create(objTTBossController.x+260,objTTBossController.y-192,objHarmfulBlock);
        state = 5;
        play_sfx(sndBreak,0);
    }
break;
case 5:
    screen_shake();
    if y > __view_get( e__VW.YView, 0 )+260 {
        with objWhaleBoss state =8;
        state=6;
    }
    
break;
case 6:
    x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5;
    y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*.5+16;
    image_xscale=0;
    image_yscale=0;
break;
}
    yreal+=yspeed;
    y=floor(yreal);
    
    if image_yscale >= .75 {
        reaction_script=player_reaction_harmful;
    }
    else reaction_script=noone;

