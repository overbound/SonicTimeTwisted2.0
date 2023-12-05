/// @description  Prepare for sprouting
if other.through or alarm[1] exit;
// there are some exceptions
// some solid platforms shouldn't get flowers growing on them
if other.object_index == objPlaneGimmick exit;
// animate
sprite_index = sprFlowerSprout;
image_index = 0;
// stop movement
speed = 0;
gravity = 0;
// place atop solid
while place_meeting(x, y, other.id) y -= 1;
// set alarm
alarm[1] = 16;

