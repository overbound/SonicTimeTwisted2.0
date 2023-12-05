/// @description  Platform behavoir
switch mode
{
case 1: x = floor(xstart+cos(objScreen.image_index*time)*length); break;
case 2: x = floor(xstart+sin(objScreen.image_index*time)*length); break;
case 3: y = floor(ystart+cos(objScreen.image_index*time)*length); break;
case 4: y = floor(ystart+sin(objScreen.image_index*time)*length); break;
}

