/// @description  Render saucerbot
draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var __b__;
__b__ = action_if_variable(frozen, true, 0);
if __b__
{
/// Render ice block
// get offset from time
var offset = (-1+(((90-alarm[0]) div 4) mod 2)*2)*(alarm[0]<45);
// draw ice block
draw_sprite(sprShieldIceBlock, 0, x+offset, y);

}
