if state >= 3 {
    draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1);
}
if radius != 0 {
    draw_set_alpha(image_alpha);
    draw_circle(x,y,radius,false);
    draw_set_alpha(1);
}

