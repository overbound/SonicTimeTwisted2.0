var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
switch state {
// Do nothing
case 0:

break;
// Start Drilling
case 1:
    image_speed = .5;
    
    if image_index >= 3 {
    
        state = 2;
        fire_debris =0;
        image_speed=.05;
    }
    
break;
// Drill
case 2:
    
    
    if fire_debris == 0 {
    with instance_create(x+16,y+6,objOstrichDibris) {
        play_sfx(sndRockSmash,5);
        sprite_index = sprOstrichDebris;
        image_index = 1;
        image_speed = 0;
        direction = 60;
        speed = 2;
        gravity= .15;
        remove=2;
    }
    
    with instance_create(x+16,y+6,objOstrichDibris) {
    
        sprite_index = sprOstrichDebris;
        image_index = 0;
        image_speed = 0;
        direction = 120;
        speed = 2;
        gravity= .15;
        remove=2;
    }
    }
    
    fire_debris +=1;
    if fire_debris == 18{
        
        fire_debris =0;
    
        }
        if image_index >= 8 {
            
            fire_debris =1;
            image_speed =0;
            state=2.5;
            alarm[1]=30;
            
        }
    
break;
case 3:
    image_speed = -.325;
    
    if image_index < 1 {
    
        image_speed =0;
        image_index =0;
        alarm[0]=180;
        state = 0;
    
    }
break;
}

}
