switch state{
    case 1:
    
    if __view_get( e__VW.YView, 0 )+240 > objLevel.player[0].camera.bottom {
    
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (1) );
    
    }
    
    break;
    
    case 2:
    
        if shake {
    
        
            //screen_shake();
            
            if !audio_is_playing(sndScreenShake) { play_sfx(sndScreenShake, 0); }
        }
        
    break;
    
    case 3:
    
        if flashAlpha == .25 {
        
            play_sfx(sndSSBlast, 0);
        
        }     
    
        flashAlpha+=.025;
    
        if flashAlpha > 3 {
    
            state=4;
    
        }
    
    break;
    
    case 4:
    
        with objSSMetalCut instance_destroy();
        with objSSRobotnik instance_destroy();
        with objMetalSonicVoice instance_destroy();
        
        
        with objSSBack {
        
            alarm[0]=120;
            
            with cloud[0] visible = true;
            with cloud[1] visible = true;
            with cloud[2] visible = true;
            with cloud[3] visible = true;
        
        }
        
        with objLevel.player[0].camera {
        
            left = 0;
            right = room_width;
            bottom = room_height;
            
        }
    
        with objLevel.player[0] {
        
            player_is_falling();
            x = 2288;
            y = 4280;
            facing = -1;
            
            // animate
            animation_new = "spin";
            timeline_speed = 1/max(5-abs(xspeed), 1);
            image_angle = 0;
            
            __view_set( e__VW.XView, 0, x - __view_get( e__VW.WPort, 0 )*.5 );
            __view_set( e__VW.YView, 0, y - __view_get( e__VW.HPort, 0 )*.5 );            
             
        }
        
        with objSSBack.backWall { image_index=1; }
        
        state = 5;
        
    break;
    
    case 5:
        flashAlpha-=.1;
    
        if flashAlpha < 0 {
            instance_destroy();
        }
    
    break;
    
}


