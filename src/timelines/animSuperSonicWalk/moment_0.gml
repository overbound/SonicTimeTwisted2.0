var __b__;
__b__ = action_if_variable(abs(xspeed), 3.5, 4);
if __b__
{
sprite_index = sprSuperSonicJog;
}
else
{
sprite_index = sprSuperSonicWalk;
}
image_index = 0;
timeline_loop = true;
