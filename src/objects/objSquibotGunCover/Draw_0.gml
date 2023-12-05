/// @description  Draw flash
draw_set_color(c_white);
if parentId.alarm[0] < 45 {
    draw_boss_hit_blend_parent_alarm();
    draw_self();
    draw_boss_hit_blend_parent_alarm();
} else draw_self();

