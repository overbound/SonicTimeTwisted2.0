var __b__;
__b__ = action_if_variable(abs(xspeed), 3.5, 4);
if __b__
{
sprite_index = sprKnucklesJog;
}
else
{
sprite_index = sprKnucklesWalk;
}
image_index = 1;
