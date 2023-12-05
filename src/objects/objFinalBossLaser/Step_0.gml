/// @description  State
switch state {
case 0: // Start Firing
    if instance_exists(objFinalBossFace) {
        x=objFinalBossFace.x+xOriginOffset;
        y=objFinalBossFace.y+yOriginOffset;
    }
    x2+=xspeed;
    y2+=yspeed;
    
    if x2 < xstart -426 {
    
       state = 1;
       xspeed = dcos(dir)*3;
       yspeed = -dsin(dir)*3;
       
    }
break;
case 1: // End Firing
    with objFinalBoss eyeTell = false;
    x+=xspeed;
    y+=yspeed;
    x2+=xspeed;
    y2+=yspeed;
    
    if instance_exists(objLevel.player[0])
        if x < objLevel.player[0].x || x < 1728 {
        
            remove=2;
        
        }
    
break;
}

/// Flash Visiblity
visible = !visible;

/// Check for player collision
if instance_exists(objLevel.player[0]){
    if collision_line( x, y, x2, y2, objLevel.player[0], false, false ) {
        with objLevel.player[0] player_reaction_final_boss_laser(other);
    }
}

