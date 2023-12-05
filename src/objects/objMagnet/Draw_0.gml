//draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
gpu_set_blendmode(bm_add);
draw_sprite_part_ext(sprite_index,0,left,0,right,sprite_height,x,y,image_xscale,image_yscale,image_blend,image_alpha);
gpu_set_blendmode(bm_normal);

