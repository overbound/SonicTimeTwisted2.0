var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
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
    while collision_ray(offset_x, offset_y, 0, objSolid) y -= 1;
    // downward slope
    for (var i=0; i<offset_y*2; i+=1) {if collision_ray(offset_x, offset_y+1, 0, objSolid) break; y += 1;}
    if (i==offset_y*2)
    {
        // reverse direction
        x -= hspeed;
        y -= offset_y*2;
        cliff_facing = sign(hspeed);
    }
}

/// Animation
// update image
image_index = ((x - x_origin) / 12) mod 4;
// adjust yoyo sprite
if yoyo_length>=5 yoyo.sprite_index = sprMoleYoyoExtended; else yoyo.sprite_index = sprMoleYoyoRetracted;
if yoyo_length>0 yoyo.image_index = 1+(timer mod 3); else yoyo.image_index = 0;

}
}
