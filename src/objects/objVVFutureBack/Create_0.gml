event_inherited();
/// Initialize background
var relative_y = 0.8;
// bushes
parallax_create(1, backVVFBush3, 0, 0, 160, 32, 0, 0, 0.48, relative_y, 0, 536, 0, 0);
// tower
parallax_create(1, backVVFTower, 0, 0, 320, 160, 0, 0, 0.48, relative_y, 0, 376, 0, 0);
// bushes
parallax_create(1, backVVFBush3, 0, 0, 160, 32, 0, 0, 0.48, relative_y, 0, 472, 0, 0);
// bushes
parallax_create(1, backVVFBush2, 0, 32, 80, 16, 0, 0, 0.50, relative_y, 0, 456, 0, 0);
parallax_create(1, backVVFBush2, 0, 16, 80, 16, 0, 0, 0.51, relative_y, 0, 440, 0, 0);
parallax_create(1, backVVFBush2, 0, 0, 80, 16, 0, 0, 0.52, relative_y, 0, 424, 0, 0);
// bushes 
parallax_create(1, backVVFBush1, 0, 16, 40, 8, 0, 0, 0.53, relative_y, 0, 416, 0, 0);
parallax_create(1, backVVFBush1, 0, 8, 40, 8, 0, 0, 0.54, relative_y, 0, 408, 0, 0);
parallax_create(1, backVVFBush1, 0, 0, 40, 8, 0, 0, 0.55, relative_y, 0, 400, 0, 0);
// hills
parallax_create(1, backVVFHills2, 0, 0, 272, 96, 0, 0, 0.56, relative_y, 0, 310, 0, 0);
parallax_create(1, backVVFHills1, 0, 0, 136, 113, 0, 0, 0.58, relative_y, 0, 290, 0, 0);
// clouds
with parallax_create(1, backAAFClouds, 0, 0, 460, 160, -0.5, 0, 0.85, relative_y, 0, 0, 0, 0) image_alpha = 0.5;
with parallax_create(1, backAAFClouds, 0, 160, 460, 167, -0.2, 0, 0.8, relative_y, 0, 160, 0, 0) image_alpha = 0.5;
// sky
parallax_create(1, backVVFSky, 0, 0, 1, 320, 0, 0, 0.85, relative_y, 0, 0, 0, 0);

instance_destroy();
