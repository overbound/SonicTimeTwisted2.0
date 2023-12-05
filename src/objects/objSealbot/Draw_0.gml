/// @description  abort everything if the enemy is not visible
// if the enemy is in view...
if(!is_in_view) exit;

/// Draw character image
if sprite_index>-1 draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), image_xscale*facing, image_yscale, gravity_angle(), image_blend, image_alpha);

var __b__;
__b__ = action_if_variable(debug_mode, true, 0);
if __b__
{
/// Draw collision mask
// bounding box
draw_set_color(c_lime);
draw_set_alpha(image_alpha);
if gravity_angle() mod 180 draw_rectangle(floor(x)-offset_y, floor(y)-offset_x, floor(x)+offset_y, floor(y)+offset_x, true); else
draw_rectangle(floor(x)-offset_x, floor(y)-offset_y, floor(x)+offset_x, floor(y)+offset_y, true);
// wall sensor
draw_set_color(c_white);
if gravity_angle() mod 180 draw_line(floor(x), floor(y)-offset_x, floor(x), floor(y)+offset_x); else
draw_line(floor(x)-offset_x, floor(y), floor(x)+offset_x, floor(y));
draw_set_alpha(1);

}
__b__ = action_if_variable(frozen, true, 0);
if __b__
{
/// Render ice block
// get offset from time
var offset = (-1+(((90-alarm[1]) div 4) mod 2)*2)*(alarm[1]<45);
// draw ice block
draw_sprite(sprShieldIceBlock, 0, x+offset, y);

}
