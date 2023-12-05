draw_self();
var __b__;
__b__ = action_if_variable(frozen, true, 0);
if __b__
{
/// Render ice block
// get offset from time
var offset = (-1+(((90-alarm[1]) div 4) mod 2)*2)*(alarm[1]<45);
var yoffset = 0;
// draw ice block
draw_sprite(sprShieldIceBlock, 0, x+offset, y+yoffset);

}
