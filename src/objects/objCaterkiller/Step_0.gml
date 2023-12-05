var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
__b__ = action_if_variable(bouncing, false, 0);
if __b__
{
/// Enemy behavior
var i;
// state machine
switch state
{
case 0: // upward
    y -= 0.5;
    orb[1].y -= 0.5;
    break;
case 1: // downward
    y += 0.5;
    orb[1].y += 0.5;
    break;
}
// horizontal movement
x += image_xscale;
// do the wurm!
for (i=0; i<3; i+=1) orb[i].offset += (i*0.5)*(-1+2*state);
// turning around
switch turning
{
case -1: // turn left
    for (i=0; i<3; i+=1)
    {
        if orb[i].x<turning_point and orb[i].image_xscale==1 orb[i].x += 1; else
        {
            orb[i].image_xscale = -1;
            orb[i].x -= 1;
            if (i==2) and turning_point>orb[i].x-orb[i].offset turning = 0;
        }
    }
    break;
case 1: // turn right
    for (i=0; i<3; i+=1)
    {
        if orb[i].x>turning_point and orb[i].image_xscale==-1 orb[i].x -= 1; else
        {
            orb[i].image_xscale = 1;
            orb[i].x += 1;
            if (i==2) and turning_point<orb[i].x+orb[i].offset turning = 0;
        }
    }
    break;
default: // not turning
    for (i=0; i<3; i+=1) {orb[i].x = x-orb[i].offset*sign(image_xscale); orb[i].image_xscale = image_xscale;}
    // turn at cliffside
    if not place_meeting(x+4*sign(image_xscale), y+12, objSolid)
    {
        image_xscale = -image_xscale;
        turning = sign(image_xscale);
        turning_point = x;
    }
}

}
else
{
/// Bouncing animation
image_xscale = 1+sin(objScreen.image_index/3)*0.2;
image_yscale = image_xscale;
if image_blend==c_white image_blend = flash_color; else
image_blend = c_white;

}
}
