switch state {
    case 0: // null
        
        visible = false;
        reaction_script = noone;
        
    break;
    
    case 1: // fire
        
        reaction_script = player_reaction_lighting;
        visible = true;
        
        image_yscale +=4;        
        
        if image_yscale > laser_height {
            
            state = 2;
        
        }
    break;
    
    case 2: // stop fire
        
        y+=4;
        image_yscale -=4;
        
        if image_yscale <= 0 {
        
            state = 0;
            y =ystart;
            image_yscale = 0;
            alarm[0] = 120;
            alarm[1] = 60;
            
            gun_id.image_speed = 0;
            gun_id.image_index = 0;
            
        }
        
}

