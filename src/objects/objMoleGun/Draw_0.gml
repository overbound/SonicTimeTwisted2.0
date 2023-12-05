/// @description  Render Mole
// mole body
if sprite_index > -1 draw_sprite_ext(sprite_index, image_index, floor(x), floor(y)+1, image_xscale * facing, image_yscale, gravity_angle(), image_blend, image_alpha);
// arm links
draw_sprite(sprMoleArmLink, 0, x - (facing * 10) + (facing * (8) * cos(arm_angle)), y  + (8) * sin(arm_angle));
draw_sprite(sprMoleArmLink, 0, x - (facing * 10) + (facing * (16) * cos(arm_angle)), y  + (16) * sin(arm_angle));
// gun
draw_sprite_ext(sprMoleGun, 0, hand_point_x, hand_point_y, facing, 1, radtodeg(facing * -gun_angle), c_white, 1);
// debug only
if debug_mode draw_circle_color(damage_point_x, damage_point_y, 7, c_red, c_fuchsia, true);

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
