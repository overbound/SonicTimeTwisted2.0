/// @description Draw Tails — flash only when hurt, otherwise full visibility
if sprite_index > -1 and visible {
	var _alpha = 1;
	if (tails_hurt > 0) {
		// Hurt flash: alternate visibility
		_alpha = 1 - ((tails_hurt div 4) mod 2);
	}
	draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), image_xscale * facing, image_yscale, image_angle, image_blend, _alpha);
}