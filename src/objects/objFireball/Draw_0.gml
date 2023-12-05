
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, .35);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

