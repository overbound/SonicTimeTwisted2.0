/// @description  set laser height
laser_height=ybottom-y;

switch state {

    case 0: // null

        visible = false;
        reaction_script = noone;
        
    break;
    
    case 1: // fire
        
        reaction_script = reaction;
        visible = true;
        
        image_yscale +=8;        
        
        if image_yscale > laser_height {
            
            state = 2;
        
        }
    break;
    
    case 2: // hold fire
    
    
    
    break;
    
    case 3: // stop fire
        
        y+=8;
        image_yscale -=8;
        
        if image_yscale <= 0 {
        
            state = 0;
            y =ystart;
            image_yscale = 0;
            
        }
    break;    
}

if image_alpha == 1 {
image_alpha=0;
}
else image_alpha=1;


