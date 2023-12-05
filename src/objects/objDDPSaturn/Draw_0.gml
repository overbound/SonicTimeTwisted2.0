/// @description  Render sun
// get draw coordinates
var fx = x + floor(__view_get( e__VW.XView, view_current ) * relative_x) + absolute_x;
var fy = y + floor(__view_get( e__VW.YView, view_current ) * relative_y) + absolute_y;
// draw sun
draw_sprite_ext(sprite_index, 1, fx, fy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, 0, fx, fy, image_xscale, image_yscale, image_angle, image_blend, .65);
gpu_set_blendmode(bm_normal);

