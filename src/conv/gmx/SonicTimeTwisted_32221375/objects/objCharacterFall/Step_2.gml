switch state {
case 0:
if gravity != 0 {
    if sprite_index != sprSuperSonicFallingEnding {
        image_xscale-=.00125;
        image_yscale-=.00125;
    } else {
        image_xscale-=.00044;
        image_yscale-=.00044;
   }
} else if sprite_index != sprSuperSonicFallingEnding {
    image_xscale=1;
    image_yscale=1;
}
if __view_get( e__VW.XView, 0 ) <= 0 {
    alarm[0] = 120;
    state = 1;
    __view_set( e__VW.XView, 0, 0 );
}
if  abs(__view_get( e__VW.XView, 0 ) - abs(x-__view_get( e__VW.WView, 0 )*.5)) > 16 || abs(__view_get( e__VW.YView, 0 ) - abs(y-__view_get( e__VW.HView, 0 )*.5-16)) > 16 {
    if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 > x {
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (8) );
    }
    if __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 < x {
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (8) );
    }
    if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.5 > y {
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (8) );
    }
    if __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.5 < y {
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (8) );
    }
} else {
    __view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )*.5 );
    __view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )*.5-16 );
}
    /*if view_xview > 0 {
        view_xview = x-view_wview*.5;
        view_yview = y-view_hview*.5-16;
    } else {
        view_xview = 0;
        alarm[0] = 120;
        state = 1;
    }*/
break;
case 1:
    if alarm[0] == -1 {
    
     if endType == "nostones" {
        viewTop = 1810;
    } else  {
        viewTop = 1780;
    }
        if __view_get( e__VW.YView, 0 ) > viewTop{
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (2) );
        } else {
        
            if endType == "bad" || endType == "noemeralds" {
                with objNeverLakeEnding badFade = .0125;
            }
            state = 2;
            alarm[0] = 90;
        }
    }
break;
case 2:
    if alarm[0] == -1 {
        if endType == "bad" || endType == "noemeralds" {
            instance_create(270,1870,objGalanikBadEnding);
            alarm[0]=60;
        }
        state = 3;
    }
break;
case 3:
    instance_create(x,y,objTextEnding);
    if alarm[0] == -1 {
        if endType == "bad" || endType == "nostones" {
            with objTextEnding state = 1;
            with objMusic {
                audio_sound_gain(currentMusic,0,500);
            }
        }
        state = 4;
        alarm[0]=120;
    }
break;
case 4:
    if alarm[0] == - 1 {
        if endType == "bad"  {
            state = 12;
            alarm[0] = 500;
        } else if endType == "nostones" {
            state = 12;
            alarm[0] = 500;
       
        } else {
            instance_create(-28,1948,objPlaneRestoreFinal);
            state = 5;
        }
    }
break;
case 5:
    with objPlaneRestoreFinal {
        if x > 213 {
            instance_create(248,1944,objTLPRestoreEnding);
            other.alarm[0] = 500;
            
            other.state = 6;
            hsp = 0;
        }
    
    }
break;
case 6:
    if alarm[0] == -1 {
        if endType == "noemeralds" {
            with objTextEnding state = 1;
            state = 12;
            alarm[0] = 500;
            
            with objMusic {
                audio_sound_gain(currentMusic,0,500);
            }
            
        } else {
            with objTextEnding state = 2;
            alarm[0] = 800;
            state = 7;
        }
    with objPlaneRestoreFinal { hsp = .5; }
    }
break;
case 7:
    if alarm[0] == -1 {
        state = 8;
        with objMusic {
            audio_sound_gain(currentMusic,0,500);
        }
        with objTextEnding instance_destroy();
        with objAmyEnding visible = true;
        instance_create(208,2880,objMetalElectric);
    }
break;
case 8:
    if __view_get( e__VW.YView, 0 ) < 2760 {
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
    } else {
        __view_set( e__VW.YView, 0, 2760 )
        state = 9;
        alarm[0] = 500;
    }
break;
case 9:
    if alarm[0] == 0 { play_sfx(sndMetalPowerdown,1); }
    if alarm[0] == -1 {
        with objMetalElectric {
            blackFade +=.0125;
            if blackFade > 1.9 {
                eyeFade -=.0125;
                
                if eyeFade < 0 {
                    other.alarm[0] = 250;
                    other.state = 12;
                }
            }
        }
    }
break;
case 12:
    if (input_check_pressed(cACTION) || input_check_pressed(cSTART) || alarm[0] == -1) {
        menu_fn_restart_game();
    }
break;
case 18: // Super Sonic intro start
if !instance_exists(objFinalEnding) {
    if image_xscale == .0825 {
        play_sfx(sndSSTwinkle,1);
    }
    if image_xscale < .75 {
            image_xscale += .0525;
        image_yscale += .0525;
    } else {
        state = 19;
    }
}
break;
case 19:
    if image_xscale > .0825 {
        image_xscale -= .0525;
        image_yscale -= .0525;
    } else {
        y=472;
        state = 20;
    }
break;
case 20: 
if !instance_exists(objFinalEnding) {
    sprite_index = sprSuperSonicFallingEnding;
    x = 2000;
    image_xscale = .0825;
    image_yscale = .0825;
    depth = 4;
    state = 21;
    
}
break;
case 21:
    x-=6;
    image_xscale+=.00825;
    image_yscale+=.00825;
    with objGalanikFloat{
       // if image_index == 1 && !audio_is_playing(sndGalanikDeathScreech)
    }
    if x <= 1845 {
        with objGalanikFloat{
            image_index = 1;
        }
    }
    
    if x <= 1849 {
        with objGalanikFloat image_index = 2;
    }
    
    if x <= 1853 {
        with objGalanikFloat image_index = 3;
        if depth != -1 {
            play_sfx(sndFinalGalacnikHit,1);
        }
        depth = -1;
    }
    
    if x <= 1857 {
        with objGalanikFloat {
            image_index = 4;
        }
    } 
   if x < 1624 {
        state = 22;
        //x = 1868;
        //y = 544;
       // gravity=0.015;
    }
break;
case 22:
    with objGalanikFloat {
        if !instance_exists(objEndingExplode)
        instance_create(x,y-24,objEndingExplode);
    }
    //state = 0;
   /* if view_yview < y-view_hview*.5-16{
        view_yview += 4;
    }  else {
        state = 0;
        objCarh
    }*/
break;
}

/* */
/// Stop all Music if ended
with (objMusic) {
    var o1 = (0.1 * (objMusic.bgmGain / 100));
    if (audio_sound_get_gain(currentMusic) <= o1) {
        stop_all_music(false);
    }
}

/* */
/*  */
