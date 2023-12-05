/// @description  Draw flash
draw_set_color(c_white);
if alarm[0] < 45 {
    draw_boss_hit_blend();
    draw_self();
    draw_boss_hit_blend();
} else draw_self();


