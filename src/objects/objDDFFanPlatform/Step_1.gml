if (mode == 0)
{
	y = floor(ystart+cos(objScreen.image_index/time)*offset);
}
else
{
	y = floor(ystart+sin(objScreen.image_index/time)*offset);
}
///animation direction

if y > yprevious {
    image_speed = .25;
} else image_speed = -.25;


/// kill follow
killHandle.x = x;
killHandle.y = y + 9;

