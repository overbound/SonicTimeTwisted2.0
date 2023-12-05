var __b__;
__b__ = action_if_variable(moving, true, 0);
if __b__
{
/// Handle moving
if (objScreen.image_index div 64) mod 2 {if offset<sprite_height offset += (sprite_height*0.25);} else
if offset>0 offset -= (sprite_height*0.25);
// apply offset
x = xstart-sine[image_angle]*offset;
y = ystart-cosine[image_angle]*offset;

}
