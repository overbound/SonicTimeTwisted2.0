action_inherited();
/// Destroy orbs
for (var i=0; i<3; i+=1) with orbs[i] {gravity = 0.21875; reaction_script = -1; remove = 2;}

var __b__;
__b__ = action_if_variable(frozen, true, 0);
if __b__
{
/// Release debris
with instance_create(x-12, y-8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = -2; vspeed = -4;}
with instance_create(x+12, y-8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = 2; vspeed = -4; image_index = 1;}
with instance_create(x-12, y+8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = -2; vspeed = -2; image_index = 2;}
with instance_create(x+12, y+8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = 2; vspeed = -2; image_index = 3;}

}
