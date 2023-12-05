var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavior
// move towards closest player
if not (moving or waiting)
{
    var player = instance_nearest(x, y, objPlayer);
    if player>-1 {move_towards_point(player.x, player.y, 4); moving = 32; waiting = 120;}
}
else if moving
{
    // delay body movement
    delay = (delay+1) mod 5;
    if (delay==0) repeat (5) with instance_create(x, y, objCaterminatorOrb) {parent_id = other.id; timer = other.delay_offset; play_sfx(sndCaterminatorExtend,4);}
}
// facing
if hspeed<0 image_xscale = -1;
if hspeed>0 image_xscale = 1;

}
