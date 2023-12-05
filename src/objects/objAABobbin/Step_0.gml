if (alarm[0] > 0)
{
	if (image_speed == 0)
	{
		image_speed = 0.5;
	}
}
/// Handle movement
switch type
{
	case 1: x = xstart+cos(objScreen.image_index/16)*16; break;
	case 2: y = ystart+cos(objScreen.image_index/16)*16; break;
}
// 3D effect
if type>0
{
    // expand and contract
    image_xscale = 1+sin(objScreen.image_index/16)*0.25;
    image_yscale = image_xscale;
    // adjust depth to "distance"
    if image_xscale>1 depth = -1; else depth = 1;
    // negate collision if too far back
    depth_mask = 3*(image_xscale>0.85 and image_xscale<1.15);
}

