var __b__;
__b__ = action_if_variable(bouncing, true, 0);
if __b__
{
/// Bouncing animation
image_xscale = 1+sin(objScreen.image_index/3)*0.2;
image_yscale = image_xscale;
if image_blend==c_white image_blend = flash_color; else
image_blend = c_white;

}
