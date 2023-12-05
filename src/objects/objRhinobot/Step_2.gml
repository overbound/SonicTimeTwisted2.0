var __b__;
__b__ = action_if_variable(frozen, 0, 0);
if __b__
{
{
__b__ = action_if_variable(state, 4, 1);
if __b__
{
/// Movement and collision
// reset collision data
wall_facing = 0;
cliff_facing = 0;
// wall collision
if collision_ray(offset_x, 0, 0, objSolid)
{
    x -= hspeed;
    wall_facing = sign(hspeed);
}
else
{
    // upward slope
    while collision_box(offset_x, offset_y, 0, objSolid) y -= 1;
    // downward slope
    for (var i=0; i<offset_y*2; i+=1) if collision_ray(offset_x, offset_y+1+i, 0, objSolid) break;
    if (i<offset_y*2) y += i; else {x -= hspeed; cliff_facing = sign(hspeed);}
}

}
}
}
