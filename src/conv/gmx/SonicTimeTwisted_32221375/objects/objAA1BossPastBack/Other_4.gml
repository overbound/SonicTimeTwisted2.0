action_inherited();
/// Initialize background
surface = -1;
// defaults
var relative_y = 0; 
var absolute_y = 0;

// grass 2
grass1=parallax_create(1, backAAPGrass2, 0, 0, 128, 80, -4.5, 0, 0.60, relative_y, 0, absolute_y+336, 0, 0); //418
grass1.visible=false;
// grass w/ cranes
grass2=parallax_create(1, backAAPGrass1, 0, 0, 256, 192, -4, 0, 0.64, relative_y, 0, absolute_y+176, 0, 0); //240
grass2.visible=false;
// water
water=parallax_create(1, backAAPWater, 0, 0, 32, 64, -3.48, 0, 0.8, relative_y, 0, absolute_y+256, 0, 0); //338
water.visible=false
// hills
hills=parallax_create(1, backAAPHills, 0, 0, 206, 118, -3, 0, 0.85, relative_y, 0, absolute_y+150, 0, 0);
hills.visible=false;
// clouds
clouds1=parallax_create(1, backAAFClouds, 0, 0, 460, 160, -2.5, 0, 0.85, relative_y, 0, absolute_y+32, 0, 0) 
clouds1.image_alpha = 0.5;
clouds1.visible=false;
clouds2=parallax_create(1, backAAFClouds, 0, 160, 460, 167, -2, 0, 0.8, relative_y, 0, absolute_y+194, 0, 0) 
clouds2.image_alpha = 0.5;
clouds2.visible=false
// sky
sky=parallax_create(1, backAAPSky, 0, 0, 16, 224, -1, 0, 0.85, relative_y, 0, absolute_y-16, 0, 0);
sky.visible = false

