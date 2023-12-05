var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// activate start drilling
state=1;

}
else
{
action_set_alarm(10, 0);
}
