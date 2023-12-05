if y < ystart-40 {
    vspeed = 1;
}
if vspeed == 1 && y > ystart {
       
    with ostrichHandle state = 3;
    destroy=false;
    instance_destroy();
}
if fire_debris == 0 {
    with instance_create(x,ystart+6,objOstrichDibris) {
    
        sprite_index = sprOstrichDebris;
        image_index = 1;
        image_speed = 0;
        direction = 60;
        speed = 2;
        gravity= .15;
        remove=2;
    }
    
    with instance_create(x,ystart+6,objOstrichDibris) {
    
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

