var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavior
var i, ox, offset=0;
for (i=0; i<3; i+=1){
    if i == 1
        segment[i].y = segment[i].ystart+cos(objScreen.image_index/24)*4;
    else
        segment[i].y = segment[i].ystart+sin(objScreen.image_index/24)*4;
}
y = ystart+cos(objScreen.image_index/24)*8;
// horizontal movement
x += image_xscale;

// turning around
switch turning
{
case -1: // turn left
    for (i=0; i<3; i+=1)
    {
        if segment[i].x<turning_point and segment[i].image_xscale==1 segment[i].x += 1; else
        {
            segment[i].image_xscale = -1;
            segment[i].x -= 1;
            if (i==2) and turning_point>segment[i].x-segment[i].offset turning = 0;
        }
    }
    break;
case 1: // turn right
    for (i=0; i<3; i+=1)
    {
        if segment[i].x>turning_point and segment[i].image_xscale==-1 segment[i].x -= 1; else
        {
            segment[i].image_xscale = 1;
            segment[i].x += 1;
            if (i==2) and turning_point<segment[i].x+segment[i].offset turning = 0;
        }
    }
    break;
default: // not turning
    for (i=0; i<3; i+=1) {segment[i].x = x-segment[i].offset*sign(image_xscale); segment[i].image_xscale = image_xscale;}
}
// check x distance from player
with instance_nearest(x, y, objPlayer) other.offset = x - other.x;
// turn around if too far
if abs(offset) > 96 and (image_xscale != sign(offset)) and (turning == 0)
{
    image_xscale = -image_xscale;
    turning = sign(image_xscale);
    turning_point = x;
    
}


}
