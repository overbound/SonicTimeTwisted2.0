var alphaOffset = sin(objScreen.image_index/30)*0.5;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprLittlePlanetAddPiece2, 0, x, y, image_xscale, image_yscale, image_angle, c_white, .65+alphaOffset);
draw_set_blend_mode(bm_normal);

