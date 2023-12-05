if active {
with player_id {
    //move_towards_point(other.x,other.y,6);
    
    if x > other.x +4 {
        
            x -=2; 
        
        } else if x < other.x -4 {
        
            x+=2;
        
        }
        
    if y > other.y +4 {
        
           y -=2; 
        
        } else if y < other.y -4 {
        
            y+=2;
        
        } 
    
    
    move_view_to_center(6);
    if input_check_pressed(cLEFT) {
    
        other.image_angle=angle_wrap(other.image_angle+45);
    
    }
    if input_check_pressed(cRIGHT) {
    
        other.image_angle=angle_wrap(other.image_angle-45);
    
    }
    
    if input_check_pressed(cACTION) {
        speed=0;
        other.image_speed=.25;
        player_is_falling();
        xspeed = cosine[other.image_angle]*20;
        yspeed = -sine[other.image_angle]*20;
        other.active = false;
        gravity_force = 0;
        other.alarm[0] = 25;
        other.remove=0;
        play_sfx(sndBombLaunch,2);
        with objTailsEffect hide = false;
        // rumble
        rumble(rumble_short_strong);
    }
}
} else {
    if image_index == 2 {
        image_speed=0;
    }
}
if alarm[0] mod 5 == 0 && alarm[0] <> -1 {
    with instance_create(x,y,objCanonSmoke) {
        direction = other.image_angle;
        speed=3;
    }
}

