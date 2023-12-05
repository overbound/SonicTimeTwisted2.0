if draw {
    draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, view_current )+xoffset,__view_get( e__VW.YView, view_current )+yoffset,1,1,0,c_white,0.85);
    xoffset -= 5;
    if xoffset < -__view_get( e__VW.WPort, view_current ) {
        
        xoffset = __view_get( e__VW.WPort, view_current );
        yoffset = +64;
        draw = false;
    
    }
}

