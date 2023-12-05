
switch state {
case 0:
    if alarm[0] == -1 {
    
        alarm[0] = 540;
    
    }
    if objLevel.player[0].camera.bottom < __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) {
    
        __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (2) );
    
    } else {
    
       __view_set( e__VW.YView, view_current, objLevel.player[0].camera.bottom - __view_get( e__VW.HView, view_current ) );
    
    with playerId {
        
            x = other.x;
            
            if y < other.ground-15 {
            
                y+=4;
            
            } else {
                y = other.ground-15;
                animation_new = "idle";
                timeline_speed = 1;
                image_index = 0;
                image_angle = 0;
            }
            
            if other.x <= x {
            
                instance_create(other.x,other.y+256,objGalanik) ;
                other.state = 1;
                instance_create(x-64,2304,objPPBossDisapearPlatform);
                
            }
    }
    
    with objPPBossFloor alarm[0]=120;
    
    }
break;
case 1:
    with playerId {
        
            x = other.x;
            
            if y < other.ground - 15 {
            
                y+=4;
            
            } else {
                    
                    y = other.ground-15;
                    animation_new = "idle";
                    timeline_speed = 1;
                    image_angle = 0;
                }
    }
    
    with objGalanik {
    
        if other.alarm[0] == 400 {
            play_sfx(sndBreak,10);
        }
    
        if other.alarm[0] == 40 {
        
            play_sfx(sndGalanikLaugh,1);
            set_boss_music(room);
            play_boss_intro(objMusic.bossIntroAsset, 0);
        }
        
        if alarm[0] == 0 {
            play_sfx(sndQuake,10);
        }
    
       if alarm[0] <= 0 {
                
                    if instance_exists(objLevel.player[0]) { 
                        screen_shake();
                    }
                    
                if other.y - 240 < y {
                    y -=2;
                } else { 
                        other.state = 2;
                        state = 1;
                }
        }
     }
break;
case 2:
    with playerId {
        player_is_falling();
    }
    
    state = 3;
    
break;
case 3:
break;
}


