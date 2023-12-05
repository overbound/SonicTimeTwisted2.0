action_inherited();
 /// Initialize background
var relative_y = 0.8;
basex=__view_get( e__VW.XView, view_current );
basey=__view_get( e__VW.YView, view_current );
shake = false;
// hut
parallax_create(1, backVVPHutTop, 0, 0,164, 206, 0, 0, 0.42, relative_y, 0, 0, 64, 0);
parallax_create(1, backVVPHut, 0, 0, 164, 206, 0, 0, 0.42, relative_y, 0, 416, 64, 0);
// bushes
parallax_create(1, backVVPLeaves3, 0, 0, 160, 112, 0, 0, 0.48, relative_y, 0, 0, 0, 0);
parallax_create(1, backVVPLeaves2, 0, 0, 160, 112, 0, 0, 0.50, relative_y, 0, 48, 0, 0);
parallax_create(1, backVVPLeaves1, 0, 0, 160, 112, 0, 0, 0.53, relative_y, 0, 96, 0, 0);
// bushes (bottom)
parallax_create(1, backVVPLeaves3Bottom, 0, 0, 160, 112, 0, 0, 0.53, relative_y, 0, 512, 0, 0);
parallax_create(1, backVVPLeaves2Bottom, 0, 0, 160, 112, 0, 0, 0.50, relative_y, 0, 464, 0, 0);
parallax_create(1, backVVPLeaves1Bottom, 0, 0, 160, 112, 0, 0, 0.48, relative_y, 0, 416, 0, 0);

// water shimmer
shimmer[0] = parallax_create(1, backVVPShimmer, 0, 0, 256, 16, 0, 0, 0.95, relative_y, 0, 378, 0, 0); 
shimmer[1] = parallax_create(1, backVVPShimmer, 0, 16, 256, 32, 0, 0, 0.93, relative_y, 0, 394, 0, 0);
shimmer[2] = parallax_create(1, backVVPShimmer, 0, 48, 256, 48, 0, 0, 0.90, relative_y, 0, 426, 0, 0)
// hills water
parallax_create(1, backVVPWater, 0, 0, 256, 16, 0, 0, 0.95, relative_y, 0, 380, 0, 0);
parallax_create(1, backVVPWater, 0, 16, 256, 32, 0, 0, 0.93, relative_y, 0, 394, 0, 0);
parallax_create(1, backVVPWater, 0, 48, 256, 48, 0, 0, 0.90, relative_y, 0, 426, 0, 0);
// clouds
with parallax_create_sprite(1, sprVVPClouds, 0, -.15, 0, .84, relative_y, 0, 120, 0, 0) image_alpha = 0.25; 
with parallax_create_sprite(1, sprVVPClouds, 0, -.25, 0, .8, relative_y, 0, 140, 0, 0) image_alpha = 0.25;
// sun
instance_create(0, 0, objVVPastBackSun);
// sky
parallax_create(1, backVVPSky, 0, 0, 1, 320, 0, 0, 0.85, relative_y, 0, 80, 0, 0);
alarm[1]=1;

