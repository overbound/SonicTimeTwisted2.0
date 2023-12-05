/// @description  Render Fireball
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprGalanikFireBallAdd,image_index,x,y,image_xscale*1.2,image_yscale*1.2,0,c_white,0.5);
draw_sprite_ext(sprGaanikFireBallLightingAdd,lighting_index,x,y,image_xscale,image_yscale,0,c_white,0.5);
gpu_set_blendmode(bm_normal);

