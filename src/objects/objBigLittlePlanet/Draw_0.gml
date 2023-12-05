/// @description  Render LTP
// get draw coordinates
var fx = x + floor(__view_get( e__VW.XView, view_current ) * relative_x) + absolute_x;
var fy = y + floor(__view_get( e__VW.YView, view_current ) * relative_y) + absolute_y;

draw_sprite_ext(sprite_index, 1, fx, fy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprBigLittlePlanetAddGlow, 0, fx, fy, image_xscale, image_yscale, image_angle, image_blend, 1);
draw_set_blend_mode(bm_normal);

