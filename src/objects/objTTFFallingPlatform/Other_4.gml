var __b__;
__b__ = action_if_variable(image_xscale, -1, 0);
if __b__
{
/// Reverse direction
x -= 128;
image_xscale = 1;
if objProgram.in_past == true {
    sprite_parts = sprFFCollapsingPartsRight;
    image_index = 1;
    }
    else {
            sprite_parts = sprFFFCollapsingPartsRight;
            image_index = 3;
        }

}
