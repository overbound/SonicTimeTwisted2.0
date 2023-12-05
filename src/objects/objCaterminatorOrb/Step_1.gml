var __b__;
__b__ = action_if_variable(instance_exists(parent_id), true, 0);
if __b__
{
/// Timer
if timer {timer -= 1; if not timer instance_destroy();}

}
