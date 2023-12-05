action_inherited();
var __b__;
__b__ = action_if_variable(back, -1, 2);
if __b__
{
{
x = x mod (width+separation_x);
y = y mod (height+separation_y);
}
}
else
{
__b__ = action_if_variable(sprite_index, -1, 2);
if __b__
{
{
x = x mod (sprite_width+separation_x);
y = y mod (sprite_height+separation_y);
}
}
}
