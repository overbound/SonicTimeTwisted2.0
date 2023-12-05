action_set_alarm(120, 0);
image_speed = 0;
fire = false;
frozen = false;
/// Release debris
with instance_create(x-12, y-8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = -2; vspeed = -4;}
with instance_create(x+12, y-8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = 2; vspeed = -4; image_index = 1;}
with instance_create(x-12, y+8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = -2; vspeed = -2; image_index = 2;}
with instance_create(x+12, y+8, objShieldIceBlockDebris) {depth = other.depth-1; hspeed = 2; vspeed = -2; image_index = 3;}

