action_set_relative(1);
image_speed += -0.002;
var __b__;
__b__ = action_if_variable(alarm[0], 64, 1);
if __b__
{
{
action_set_relative(0);
visible = not visible;
action_set_relative(1);
}
}
action_set_relative(0);
