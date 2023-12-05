/// @description  Draw Metal Sonic
draw_set_color(c_white);
draw_boss_hit_blend();
draw_self();
if firing draw_sprite(sprMetalFiring, (objScreen.image_index div 2) mod 2, x, y);
draw_boss_hit_blend();

