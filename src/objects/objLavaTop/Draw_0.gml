//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.5);
//draw_sprite_ext(objLavaTop,image_index,x,y,1,1,0,c_white,1);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprPPLavaTopAdd,image_index,x,y,image_xscale,image_yscale,0,c_white,0.5);
draw_set_blend_mode(bm_normal);

