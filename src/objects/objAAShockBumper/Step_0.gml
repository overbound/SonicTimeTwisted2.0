action_inherited();
/// Move shockers
var i;
// stick to platform sides
shocker[0].x = bbox_right+1;
shocker[1].x = bbox_left;
// adjust to platform position
for (i=0; i<2; i+=1)
{
    shocker[i].y = y;
    shocker[i].image_xscale = image_xscale;
    shocker[i].image_yscale = image_yscale;
}

