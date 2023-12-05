/// @description  State
switch state {
case 0: // Start Firing
    with objGalanik {
        other.x=x+other.xOriginOffset;
        other.y=y+other.yOriginOffset;
        }
    
    
    if instance_exists(platformId) {
    
    
    if laser == 0 {
    
        x2=platformId.x+platformId.sprite_width*0.25;
        
        
    } else {
    
        x2=platformId.x+platformId.sprite_width*0.75;
    
    }
    
    xOffset2LeftMax=-(platformId.sprite_width*0.25);
    xOffset2RightMax=platformId.sprite_width*0.25;
    
    if xOffset2LeftMax < xOffset2Left {
        xOffset2Left-=1;
    }
    
    if xOffset2RightMax > xOffset2Right {
        xOffset2Right+=1;
    }
    
    //xoffset = abs(platformId.x - x);
    
        if y+yoffset+12 < platformId.y {
        
            yoffset+=6;
            image_xscale += (xOffset2Right+xOffset2Left)/32;
            image_yscale += yoffset/720;
        
        } else if y+yoffset-12 > platformId.y {
        
            yoffset-=6;
            image_xscale += (xOffset2Right+xOffset2Left)/32;
            image_yscale -= yoffset/720;
        
        } else {
        
            if createFlame == true  {
                for(i = 0; i < 64; i+=16;) {
                    with instance_create(x2+xOffset2Left+i, floor(y+yoffset),objLaserFire) {
                        parentId = other.platformId;
                        xoffset = other.i;
                        laser = other.laser;
                    }
                }
                
                createFlame = false;
            }
        }
    }
    
break;
case 1: // End Firing
    with objGalanik {
        other.x=x+other.xOriginOffset;
        other.y=y+other.yOriginOffset;
    }
    //yOriginOffset += 6;
    //if yOriginOffset > yoffset+32
        yoffset+=6;
        
    y+=6;
    image_yscale -= yoffset/720;
    
    //if yOriginOffset > 64 {
    if yoffset > 64 {
        // Move Eggman offscreen
        with objGalanik {
         
            if state == 3 { 
                state = 4; 
            }
        }
        
        instance_destroy();
    }
break;
}
if instance_exists(platformId) {
    if laser == 0
        image_angle = point_direction(x,y,platformId.x+32,platformId.y)+90
    else image_angle = point_direction(x,y,platformId.bbox_right-32,platformId.y)+90
    
}
if state < 2 
    reaction_script = player_reaction_harmful;

/// Flash Visiblity
if state < 1000
    visible = !visible;

