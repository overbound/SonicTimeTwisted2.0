/// @description Draw CPU Tails
if sprite_index > -1 and visible {
    // Flash when invulnerable (same formula as objPlayer)
    var _alpha = 1 - ((invulnerable div 4) mod 2);
	draw_sprite_ext(sprite_index, image_index, floor(x), floor(y) + sprite_y_offset, image_xscale * facing, image_yscale, image_angle, image_blend, _alpha);
}