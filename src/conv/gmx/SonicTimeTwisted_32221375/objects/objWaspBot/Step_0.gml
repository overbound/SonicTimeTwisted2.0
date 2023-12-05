if frozen exit;
switch mode
{
    case 1: x = floor(xstart+cos(objScreen.image_index*time)*distance); break;
    case 2: x = floor(xstart+sin(objScreen.image_index*time)*distance); break;
    case 3: y = floor(ystart+cos(objScreen.image_index*time)*distance); break;
    case 4: y = floor(ystart+sin(objScreen.image_index*time)*distance); break;
}

with objLevel.player[0] {
    if x > other.x
        other.image_xscale=-1;
    else other.image_xscale=1;
}

