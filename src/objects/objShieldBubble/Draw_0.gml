/// @description  Render shield
var flashing = sprite_index==sprShieldBubble and (objScreen.flashing_visible); // this one is simply faster than frame_counter mod 2 :)
var glow_sub = image_index;
if flashing
{
    glow_sub = (objScreen.image_index div 12) mod 2;
}
// emission halo
shield_draw_glow(sprite_index, glow_sub, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, 0.7);
// base
if flashing
{
    draw_sprite_ext(sprite_index, glow_sub, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
else
{
    // surrounding wave
    draw_self();
}
