/// @description  Draw light
draw_set_color(c_white);
draw_boss_hit_blend();
gpu_set_blendmode(bm_add);
draw_self();
gpu_set_blendmode(bm_normal);
draw_boss_hit_blend();

