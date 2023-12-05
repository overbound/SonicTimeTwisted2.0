/// @description  Render water
// determine blend color
if alarm[0] draw_set_color(c_white); else {gpu_set_blendmode_ext(bm_zero, bm_src_color); draw_set_color(image_blend);}
// blend water color over area
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
gpu_set_blendmode(bm_normal);
draw_set_color(c_white);

