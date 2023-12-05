//draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_add);
draw_sprite_part_ext(sprite_index,0,left,0,right,sprite_height,x,y,image_xscale,image_yscale,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

