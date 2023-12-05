switch state {
case 0:
    if instance_exists(objLevel.player[0]) {
        if objLevel.player[0].x > x -224 {
        
            state=1;
        
        }
    }
break;
case 1: // Throw Fireballs
with arm {
    timeline_index=timeFinalBossArm;
    timeline_running=true;
    timeline_loop=true;
    timeline_position=0;
}
state +=1;
break;
case 2: // HOW IS THIS STATE CHANGED TO 3??? We NEED TO A GOOD PLACE TO TUNR EYE TELL ON
with arm {
    if timeline_position == 40 {
        play_sfx(sndGalacnikAttack,2);
    }
    if timeline_position == 120 && fire == 3 {
        other.eyeTell = true;
    }
}
break;
case 3: // Start To Fire
    laser[0]=instance_create(x,y,objFinalBossLaser);
    laser[1]=instance_create(x,y,objFinalBossLaser);
    
    play_sfx(sndMetalLaser,2);
    with laser[0] {
    
        laser=0;
        xOriginOffset=-11;
        yOriginOffset=12;
    }
    
    with laser[1] {
    
        laser=1;
        xOriginOffset=2;
        yOriginOffset=18;
    }
    
    with objLevel.player[0] {
    
        other.laser[0].platformId = self;
        other.laser[1].platformId = self;
    
    }
    state += 1;
    
break;
case 4: // End laser wait
break;
case 5: // idle before looping attacks
    eyeTell = false;
    
    if alarm[0] == -1 {
    
        alarm[0] = 200;
    
    }
    
    if alarm[0] == 0 {
    
        state = 0;
    
    }
break;
}

