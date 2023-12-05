/// @description  Draw light
draw_set_color(c_white);
draw_boss_hit_blend();
draw_set_blend_mode(bm_add);
draw_self();
draw_set_blend_mode(bm_normal);
draw_boss_hit_blend();

