/// @description  Render LTP
// get draw coordinates
var fx = x + floor(camera_get_view_x(view_camera[view_current]) * relative_x) + absolute_x;
var fy = y + floor(camera_get_view_y(view_camera[view_current]) * relative_y) + absolute_y;

draw_sprite_ext(sprite_index, 1, fx, fy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprBigLittlePlanetAddGlow, 0, fx, fy, image_xscale, image_yscale, image_angle, image_blend, 1);
gpu_set_blendmode(bm_normal);

