/// @description  Render Mole
var angle_shift = (facing*-arm_angle)+(pi*(facing<0));
// mole body
if sprite_index>-1 draw_sprite_ext(sprite_index, image_index, floor(x), floor(y)+1, image_xscale*facing, image_yscale, gravity_angle(), image_blend, image_alpha);
// ...
draw_sprite(sprMoleArmLink, 0, x-(facing*10)+(facing*8*cos(arm_angle)), (y)+8*sin(arm_angle));
// yoyo line
draw_line_width_color(line_point_x, line_point_y, yoyo.x, yoyo.y, 2, line_color, line_color);
// yoyo
with yoyo draw_self();
// throwing hand
draw_sprite_ext(sprMoleYoyoHand, (yoyo_length>0), x-(facing*10)+(facing*16*cos(arm_angle)), (y)+16*sin(arm_angle), 1, 1, radtodeg(angle_shift), c_white, 1);

var __b__;
__b__ = action_if_variable(frozen, true, 0);
if __b__
{
/// Render ice block
// get offset from time
var offset = (-1+(((90-alarm[1]) div 4) mod 2)*2)*(alarm[1]<45);
// draw ice block
draw_sprite(sprShieldIceBlock, 0, x+offset, y);

}
