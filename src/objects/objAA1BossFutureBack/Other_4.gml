action_inherited();
/// Initialize background
surface = -1;
// towers
tower1 = parallax_create(1, backAAFTowers, 0, 0, 40, 222, -3.48, 0, 0, 0, 0, 326, 68, 0);
tower1.visible = false;
tower2 = parallax_create(1, backAAFTowers, 0, 0, 40, 222, -3.48, 0, 0, 0, 68, 256, 68, 0);
tower2.visible = false;
// red buildings
building = parallax_create(1, backAAFBuildings1, 0, 0, 114, 223, -4.2, 0, 0, 0, 0, 225, 0, 0);
building.visible = false;
// starlight
stars = parallax_create(1, backAAFStars, 0, 0, 336, 156, -5.1, 0, 0, 0, 0, 0, 120, 0);
stars.visible = false;
// clouds
clouds1 = parallax_create(1, backAAFClouds, 0, 0, 460, 160, -2.55, 0, 0, 0, 0, 0, 0, 0);
clouds1.image_alpha = 0.5;
clouds1.visible = false;
clouds2 = parallax_create(1, backAAFClouds, 0, 160, 460, 167, -0.96, 0, 0, 0, 0, 160, 0, 0);
clouds2.image_alpha = 0.5;
clouds2.visible = false;
// sunset
sky = parallax_create(1, backAAFSunset, 0, 0, 16, 314, -5.1, 0, 0, 0, 0, 0, 0, 0);
sky.visible = false;

