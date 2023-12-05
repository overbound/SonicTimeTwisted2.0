state = 1;
var __b__;
__b__ = action_if_variable(title_offset1, title_offset2, 2);
if __b__
{
action_set_alarm((title_offset1/16)+1, 1);
}
else
{
action_set_alarm((title_offset2/16)+1, 1);
}
