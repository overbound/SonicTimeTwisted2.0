/// @description  Draw Fireball
draw_self();
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprGalanikFireBallAdd, image_index, x, y, image_xscale * 1.2, image_yscale * 1.2, 0, c_white, image_alpha * 0.5);
draw_sprite_ext(sprGaanikFireBallLightingAdd, floor(lightingIndex), x, y, image_xscale, image_yscale, 0, c_white, image_alpha * 0.5);
gpu_set_blendmode(bm_normal);

