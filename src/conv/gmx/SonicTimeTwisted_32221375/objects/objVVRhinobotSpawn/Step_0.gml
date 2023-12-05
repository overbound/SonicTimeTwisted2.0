/// @description  Spawn Rhinobot
// ignore if not close enough
if distance_to_object(objPlayer)>128 exit;
// create enemy
with instance_create(x, y, objRhinobot)
{
    hspeed = -3;
    vspeed = -3;
    gravity = 0.21875;
    alarm[0] = 25;
    state = 4;
    facing = -1;
}
// sound
play_sfx(sndCollapse, 4);
// destroy this
instance_destroy();

