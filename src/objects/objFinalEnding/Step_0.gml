switch state {
    case 0:
     with objLevel.player[0] {
        x+=8;
        state = player_state_object;
        if bbox_left > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )+160 {
            other.state = 1000;
            other.alarm[0] = 3;
        }   
     }
     
     with objFinalBoss {
        x +=6;
        arm.x +=6;
        arm.backArm.x +=6;
     }
     
     with objRingFinalBoss {
        with instance_create(x,y,objRingDropped) { gravity = 0;}
        instance_destroy();
     }
     with objLargeRockFinalBoss instance_change(objSmokePuff,true);
     with objFinalBossFireball instance_change(objSmokePuff,true);
     with objFinalBossFireBallStatic  instance_change(objSmokePuff,true);
     with objFinalBoss timeline_running = false;
     with objFinalBossPathControl timeline_running = false;
     
     
    break;
        
    case 1:
        screenshot = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
        
        with objFinalBoss instance_destroy();
        state = 2;
        room_goto(ending);
        depth = 10;
        
    break;
    
    case 2:
        
        with objCharacterFall {
            if y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )*0.5 {
                __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
                other.screen_y -=2;
            } else with other state = 3;
            }
    break;
    
    case 3:
        instance_destroy();
    break;
}

