var __b__;
__b__ = action_if_variable(abs(xspeed), 3.5, 4);
if __b__
{
sprite_index = sprSonicJog;
}
else
{
sprite_index = sprSonicWalk;
}
image_index = 0;
timeline_loop = true;
