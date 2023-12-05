/// @description  Draw character image
if sprite_index>-1 draw_sprite_ext(sprite_index, image_index, floor(x), floor(y)+sprite_y_offset, image_xscale*facing, image_yscale, image_angle, image_blend, image_alpha);

var __b__;
__b__ = action_if_variable(debug_mode, true, 0);
if __b__
{
/// Draw collision mask
var x1, y1, x2, y2;

// bounding box
draw_set_color(c_lime);
draw_set_alpha(image_alpha);
if mask_rotation mod 180 draw_rectangle(floor(x)-offset_y, floor(y)-offset_x, floor(x)+offset_y, floor(y)+offset_x, true); else
draw_rectangle(floor(x)-offset_x, floor(y)-offset_y, floor(x)+offset_x, floor(y)+offset_y, true);

// wall sensor
x1 = floor(x)-cosine[mask_rotation]*offset_wall;
y1 = floor(y)+sine[mask_rotation]*offset_wall;
x2 = floor(x)+cosine[mask_rotation]*offset_wall;
y2 = floor(y)-sine[mask_rotation]*offset_wall;
draw_set_color(c_white);
draw_line(x1, y1, x2, y2);
draw_set_alpha(1);

}
