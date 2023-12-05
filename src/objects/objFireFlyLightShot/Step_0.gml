/// @description  set laser height
laser_height=ybottom-y;

switch state {

    case 0: // null
        
        //with objFireFly.light visible = false;
        visible = false;
        reaction_script = noone;
        
    break;
    
    case 1: // fire
        
        reaction_script = player_reaction_harmful;
        visible = true;
        with objFireFly.light visible = true;
        
        image_yscale +=8;        
        
        if image_yscale > laser_height {
            
            state = 2;
        
        }
    break;
    
    case 2: // stop fire
        
        y+=8;
        image_yscale -=8;
        
        with objFireFly.light visible = false;
        
        if image_yscale <= 0 {
        
            state = 0;
            y =ystart;
            image_yscale = 0;
            //alarm[0] = 120;
            
        }
    break;    
}

if image_alpha == 1 {
image_alpha=0;
}
else image_alpha=1;

