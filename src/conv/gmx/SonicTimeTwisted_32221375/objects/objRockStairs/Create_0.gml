action_inherited();
fall=false;
reaction_script=noone;
yreal=y;
if image_xscale == 1 {
    block[0] = instance_create(x,y+1,objBlock)
    
    with block[0] {
    
        yoffset=0;
        xoffset=0;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
    
    }
    
    block[1] = instance_create(x+64,y+65,objBlock)
    
    with block[1] {
        yoffset=64;
        xoffset=64;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
            
    }
    
    block[2] = instance_create(x+128,y+129,objBlock)
    
    with block[2] {
    
        yoffset=128;
        xoffset=128;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
            
    }
    
    block[3] = instance_create(x+192,y+192,objBlock)
    
    with block[3] {
    
        yoffset=192;
        xoffset=192;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
        
    }
}
else {
    block[0] = instance_create(x-64,y+1,objBlock)
    
    with block[0] {
    
        yoffset=0;
        xoffset=-64;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
    
    }
    
    block[1] = instance_create(x-128,y+65,objBlock)
    
    with block[1] {
        yoffset=64;
        xoffset=-128;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
    
    }
    
    block[2] = instance_create(x-192,y+129,objBlock)
    
    with block[2] {
    
        yoffset=128;
        xoffset=-192;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
    
    }
    
    block[3] = instance_create(x-256,y+192,objBlock)
    
    with block[3] {
    
        yoffset=192;
        xoffset=-256;
        image_xscale = 8;
        image_yscale = 8;
        remove=0;
        reaction_script=player_reaction_falling_stairs;
        parentId=other.id;
    
    }
}

