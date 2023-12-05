switch state {
case 0:
if alarm[0] == -1 {
    alarm[0] =260;
} else if alarm[0] == 0 {
    state = 1;
} else if alarm[0] == 220 {
   sonicLight=instance_create(-262,-108,objSonicLight);
} else if alarm[0] == 140{
   knucklesLight=instance_create(-262,410,objKnucklesLight);
} else if alarm[0] == 110 {
    tailsLight=instance_create(-260,2,objTailsLight);
}
break;
case 1:
if __view_get( e__VW.XView, 0 ) < 426 {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (2) );
} else if alarm[0] == -1 {
    alarm[0] = 20;
}
if alarm[0] == 0 {
    state = 2;
    with objTailsIntroPast {
        image_speed = 0.2;
        play_sfx(sndTailsTalks,10);
    }
}
break;
case 2: // Tails Anim
    with objTailsIntroPast {
    
        if image_index == 6 {
        
            other.state = 3;
            image_speed=0;
        }
    }
break;
case 3:
    if alarm[0] == -1 {
    
        alarm[0]=40;
    
    }
    if alarm[0] == 0 {
    
        state = 4;
        with objTailsIntroPast { image_speed=.2; }
    
    }
break;
case 4: // Sonic Anim
    with objTailsIntroPast {
            if image_index == 11 {
            
                image_speed =0;
                other.state = 5;
            
            }
        with objSonicIntroPast {
        
            image_speed = 0.2;
        
        }
    }
break;
case 5: // Bubble Forms
with objSonicIntroPast { 
    if scale[0] >= .5 {
        other.state = 6;
        play_sfx(sndDreamBubble,10);
    }
}
break;
case 6: // move to memory cloud
    if __view_get( e__VW.YView, 0 ) > 0 {
    
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (2) );
    
    } else if alarm[0] == -1{
        __view_set( e__VW.YView, 0, 0 );
        alarm[0] = 60;
        
         
    }
    
    if __view_get( e__VW.YView, 0 ) < 32 {
    
        with objSmallSonic {
    
            active=1;
            vspeed=0.5;
            alarm[0]=15;
    
        }   
    }
    
    if alarm[0] == 0 {
        state = 7;
        play_sfx(sndRobotnikDeath,10);
    }

break;
case 7:
    with objRobotnikPastIntro {
    
        image_speed = .1;
        image_alpha -= .0125;
        
        if image_alpha <= 0 {
        
            other.state = 8;
        
        }
    
    }
break;
case 8:
    with objDeathEggCut {
    
        sprite_index=sprCutExplosion;
        image_xscale = .1;
        image_yscale = .1;
        play_sfx(sndDeathEggExplode,10);
    
    }
    state = 9;
    alarm[0] = 200;
break;
case 9:
if alarm[0] == 0 {
    state = 10;
    room_goto(introPast3);
    alarm[0] = 80;
}
break;
case 10:
if alarm[0] == 0 {
    instance_create(213,-120,objTimeTravelVortex);
}
with objTimeTravelVortex {
    if image_xscale >= 1 && other.alarm[0] == -1 {
    
        other.alarm[0]=60;
        other.state = 11;
    }
}
break;
case 11:
if alarm[0] == -1 {
    if __view_get( e__VW.XView, 0 ) < 213 {
    
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (4) );
        
    
    }else {
    
        state = 12;
        with objTimeTravelVortex { instance_create(x+140,y+120,objMetalSonicWarped); }
        
        }
}
break;
case 12:
alarm[0]=200;
state=13;
break;

}

