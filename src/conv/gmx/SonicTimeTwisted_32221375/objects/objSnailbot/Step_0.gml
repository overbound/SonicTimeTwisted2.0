var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
{
//Animation
image_xscale = Dir;

if(Dir = -1)
hsp = -1
if(Dir = 1)
hsp = +1
x += hsp

if x > xstart + span || x < xstart -span
    Dir*=-1;

}
}
