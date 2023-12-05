var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Timer
if timer {timer -= 1; if not timer {state = (state+1) mod 2; timer = 16;}}

}
