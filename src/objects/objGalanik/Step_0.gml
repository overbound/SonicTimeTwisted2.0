  switch state {
case 0:
break;
case 1: // Move Towards Player
    if instance_exists(objLevel.player[0]) { 
    
        if objLevel.player[0].x > x +2 {
        
            x +=1 
        
        } else if objLevel.player[0].x < x -2 {
        
            x-=1;
        
        } else {
        
            state = 2;
        
        }
    }   
break;
case 2: // Start To Fire
    laser[0]=instance_create(x,y,objPPGalanikLaser);
    laser[1]=instance_create(x,y,objPPGalanikLaser);
    with laser[0] {
    
        laser=0;
        xOriginOffset=-24;
        yOriginOffset=-14
    }
    
    with laser[1] {
    
        laser=1;
        xOriginOffset=24;
        yOriginOffset=-14
    }
    
    with objLevel.player[0] {
    
        other.laser[0].platformId = instance_nearest(x,y,objBossPlatform);
        other.laser[1].platformId = other.laser[0].platformId;
    
    }
    state = 3;
    
break;
case 3: // End Fire
    with laser[0] {
        if alarm[0] == 120 {
            other.eyeTell = true;
        }
    }
break;
case 4: // Move Off Screen
    eyeTell = false
    if y < ystart {
        
        y +=3;
        
    } else {
    
        instance_create(x,y,objGalanikSmall);
        state = 0;    
    }
    
break;
case 5:
        x=objPPBossController.x;
                
        if instance_exists(objLevel.player[0]) { 
            screen_shake();
            
            if alarm[1] == -1 {
                alarm[1] = 16;
            }
        }
        
                
                if objPPBossController.y - 240 < y {
                
                    y -=2;
                    
                } else { 
                        //objPPBossController.state = 2;
                        state = 1;
                   }
        //}
break;
case 6:
    with objLevel.player[0] {
        if state != player_state_standby
            camera.bottom = __view_get( e__VW.YView, 0 ) +__view_get( e__VW.HView, 0 );
        state = player_state_standby;
        x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )*0.5;
        y += 4;
        depth = -2001;
    }
    
    with laser[0] instance_destroy();
    with laser[1] instance_destroy();
    
    view_xoffset = x - __view_get( e__VW.XView, 0 );
    view_yoffset = y - __view_get( e__VW.YView, 0 );
    y+=2;
    image_xscale +=0.035;
    image_yscale = image_xscale;
    persistent = true;
    depth = -2000;
    
    if image_xscale > 6 {
        // final super sonic level
        if objProgram.special_future_current_level>=7 && objGameData.character_id[0] == 1 {
            objProgram.current_level+=1;
            objProgram.spawn_time = 36000;
            objProgram.temp_spawn_time = -1;
            room_goto(MM1);
        } else {
            room_goto(ending);
        }
        state = 7;
  
    }
break;
case 7:
    
    {
}
      x = __view_get( e__VW.XView, 0 ) + view_xoffset;
      y = __view_get( e__VW.YView, 0 ) + view_yoffset;
      state = 8;
break;
case 8:
        y+=8;
        gravity = .125;
        if bbox_top > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) {
             // setup titlecard
            //if !instance_exists(objTitlecard)
            if room == MM1
                with instance_create(0, 0, objTitlecard)
                {
                    get_titlecard_array(room, id);
                    event_perform(ev_other, ev_room_start);
                    //mode = 1;
                }
            instance_destroy();
        }
        
break;
}

/// animate eye fire
flame_index += .25;
if flame_index  == 4 {
    flame_index = 0;
}

if eye_index != -1 {
    eye_index += .5;
    
    if eye_index  == 10 {
        eye_index = 0;
    }
}

