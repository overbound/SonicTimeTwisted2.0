/// @description  Render shield
// emission halo - steady circular glow of the fire ring, giant ring style
shield_draw_glow(sprite_index, (objScreen.image_index div 3) mod 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, 0.5);
// base
if sprite_index==sprShieldFlame and (objScreen.image_index mod 3)
{
    draw_sprite_ext(sprite_index, (objScreen.image_index div 3) mod 3, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
// surrounding flame
draw_self();
