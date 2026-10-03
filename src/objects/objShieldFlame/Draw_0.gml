/// @description  Render shield
var show_base = sprite_index==sprShieldFlame and (objScreen.image_index mod 3);
// emission halo
if show_base
{
    shield_draw_glow(sprite_index, (objScreen.image_index div 3) mod 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, 1);
}
shield_draw_glow(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, 1);
// base
if show_base
{
    draw_sprite_ext(sprite_index, (objScreen.image_index div 3) mod 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
// surrounding flame
draw_self();
