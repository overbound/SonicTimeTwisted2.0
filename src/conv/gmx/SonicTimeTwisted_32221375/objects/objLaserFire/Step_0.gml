if instance_exists(parentId) {
    if laser == 0 {
    
        x=parentId.x+xoffset-7; 
        y=parentId.y-39;
        
    } else {
    
        x=parentId.x+xoffset+parentId.sprite_width*0.5-7; 
        y=parentId.y-39;
    
    
    }
} else instance_destroy();

