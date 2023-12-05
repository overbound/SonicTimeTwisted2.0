/// @description  Platform behavoir
switch mode
{
case 1: x = floor(xstart+cos(objScreen.image_index*0.03125)*80); break;
case 2: x = floor(xstart+sin(objScreen.image_index*0.03125)*80); break;
case 3: y = floor(ystart+cos(objScreen.image_index*0.03125)*80); break;
case 4: y = floor(ystart+sin(objScreen.image_index*0.03125)*80); break;
}

