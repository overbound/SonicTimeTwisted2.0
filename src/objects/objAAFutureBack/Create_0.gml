action_inherited();
/// Initialize background
relative_y = .9
//var relative_y = (room_height-300)/(room_height-objScreen.height);//496
// green buildings
parallax_create(1, backAAFBuildings2, 0, 0, 198, 96, 0, 0, 0.5, relative_y, 0, 420, 0, 0);
// towers
parallax_create(1, backAAFTowers, 0, 0, 40, 380, 0, 0, 0.58, relative_y, 0, 210, 68, 0);
parallax_create(1, backAAFTowers, 0, 0, 40, 380, 0, 0, 0.58, relative_y, 68, 230, 68, 0);
// lights
lights[0] = parallax_create(1, backAAFLights1, 0, 0, 5, 96, 0, 0, 0.5, relative_y, 177, 420, 193, 0);
lights[1] = parallax_create(1, backAAFLights2, 0, 0, 182, 56, 0, 0, 0.5, relative_y, 0, 420, 16, 0);
// statue
parallax_create(1, backAAFStatue, 0, 0, 458, 278, 0, 0, 0.64, relative_y, 0, 220, 1024, 0);
// spotlights
spotlight[0] = parallax_create_sprite(1, sprAAFSpotlight, 0, 0, 0, 0.64, relative_y, 154, 334, 1402, 0);
spotlight[0].image_alpha = 0.5;
spotlight[0].rotation = -0.4;
spotlight[1] = parallax_create_sprite(1, sprAAFSpotlight, 0, 0, 0, 0.64, relative_y, 312, 334, 1402, 0);
spotlight[1].image_alpha = 0.5;
spotlight[1].rotation = 0.4;

// red buildings
parallax_create(1, backAAFBuildings1, 0, 0, 114, 320, 0, 0, 0.7, relative_y, 0, 188, 0, 0);
// starlight
stars = parallax_create(1, backAAFStars, 0, 0, 336, 156, 0, 0, 0.85, relative_y, 2048, 0, 0, 0);
// clouds
with parallax_create(1, backAAFClouds, 0, 0, 460, 160, -0.5, 0, 0.85, relative_y, 0, 0, 0, 0) image_alpha = 0.5;
with parallax_create(1, backAAFClouds, 0, 160, 460, 167, -0.2, 0, 0.8, relative_y, 0, 160, 0, 0) image_alpha = 0.5;
// sunset
parallax_create(1, backAAFSunset, 0, 0, 16, 314, 0, 0, 0.85, relative_y, 0, 0, 0, 0);

