action_set_relative(1);
action_inherited();
var __b__;
__b__ = action_if_variable(falling, true, 0);
if __b__
{
{
y += yspeed;
}
}
//appear!

if appear > 0 && appear < 40 {
    visible = !visible;
    appear +=1;
} else {
    appear = 0;
    visible = true;
}

action_set_relative(0);
