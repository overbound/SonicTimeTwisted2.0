var __b__;
__b__ = action_if_variable(life, 0, 3);
if __b__
{
/// End routine
// stop background auto-scrolling
with objAA1BossFloorBack speed = 0;
with objAA1BossController{
    // stop moving platforms
    plat[0].hspeed = 0;
    plat[0].remove = 2;
    plat[1].hspeed = 0;
    plat[1].remove = 2;
    // start moving camera
    state = 1;
}
// move boss forward
hspeed = 6;
vspeed = 3;
state = 2;


}
else
{
state = 0;
}
