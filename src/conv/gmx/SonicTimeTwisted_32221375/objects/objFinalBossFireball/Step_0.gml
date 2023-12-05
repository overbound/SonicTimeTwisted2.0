/// @description  sound
if in_view(view_current,0) {
    if !audio_is_playing(sndGalacnikAttackLoop) && objProgram.paused == false
        play_sfx(sndGalacnikAttackLoop,2);
}

switch state {

case 0:

    image_xscale+=.025;
    image_yscale+=.025;
    
    if image_xscale >= 2 || image_index == 4 {
        state = 1;
        
        if instance_exists(objLevel.player[0]) {
            direction = point_direction(x,y,objLevel.player[0].x,objLevel.player[0].y);
            
            if direction < 110 || direction > 250 {
            
                direction = 180;
            
            }
            
            speed = 4;
        }
        
    }
    
    if image_index > 3 {
        image_speed=0;

    }

    visible = !visible;

break;

case 1:
        
    if image_index > 3 {
        image_speed=0;
        visible = true;
    }
    
        if image_xscale < 2 {
            image_xscale+=.025;
            image_yscale+=.025;
        
            visible = !visible;
        }
        
break;

case 2:
    remove=2;
    if image_index > 6 && image_speed <> 0{
        image_speed=0;
        alarm[0] = 3;
    }
    
    if alarm[0]=0 {
    
        instance_destroy();
    
    }

break;




}

/// animate lighting
if lighting_index > 4 {
    lighting_index=0;
} else lighting_index +=.25;

