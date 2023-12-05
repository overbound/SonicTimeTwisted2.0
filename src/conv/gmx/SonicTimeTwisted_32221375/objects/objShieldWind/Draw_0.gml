/// @description  Render shield

// back wind
draw_sprite_ext(sprite_index, 10 + (index mod 7), x, y, image_xscale, image_yscale, image_angle+45, image_blend, image_alpha);
// surrounding wind
draw_sprite_ext(sprite_index, index mod 3, x, y, image_xscale, image_yscale, 0, image_blend, 1-image_alpha);
// front wind
draw_sprite_ext(sprite_index, 3 + (index mod 7), x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);



