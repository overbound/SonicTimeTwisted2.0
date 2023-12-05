 draw_self();
if loopCount >= 4 {
    if scale[0] < 1 {
        scale[0]+=.025;
    } 
    else if scale[1] < 1 {
        scale[1]+=.025;    
    }
    else if scale[2] < 1 {
        scale[2]+=.025;
    }
    
    draw_sprite_ext(sprThoguhBubbleTail,0,x+60,y-80,scale[0],scale[0],0,c_white,1);
    draw_sprite_ext(sprThoguhBubbleTail,1,x+80,y-100,scale[1],scale[1],0,c_white,1);
    draw_sprite_ext(sprThoguhBubbleTail,2,x+100,y-125,scale[2],scale[2],0,c_white,1);
}

