action_inherited();
var __b__;
__b__ = action_if_variable(player_id.underwater, 0, 2);
if __b__
{
{
player_id.shield = noone;
player_id.shield_type = -1;
__b__ = action_if_variable(instance_exists(objWater), true, 0);
if __b__
{
objWater.alarm[0] = 4;
}
action_kill_object();
}
}
