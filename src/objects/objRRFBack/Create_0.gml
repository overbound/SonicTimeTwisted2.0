action_inherited();
/// Initialize background
var relative_y = 0.9;
// cloud
parallax_create(1, backRRFClouds, 0, 0, 64, 16, 0, 0, 0.89, relative_y, 0, 244, 0, 0);
parallax_create(1, backRRFCity, 0, 0, 426, 112, 0, 0, 0.91, relative_y, 0, 132, 0, 0);
parallax_create(1, backRRFCloudBack, 0, 0, 64, 64, 0, 0, 0.93, relative_y, 0, 164, 0, 0); 

parallax_create(1, backRRFClouds, 0, 0, 64, 16, 0, 0, 0.87, relative_y, 0, 280, 0, 0);
parallax_create(1, backRRFClouds, 0, 0, 64, 16, 0, 0, 0.87, relative_y, 0, 296, 0, 0);

littlePlanet=instance_create(0, 0, objBigLittlePlanet);

// sky
parallax_create(1, backRRFSky, 0, 0, 16, 224, 0, 0, 0.98, relative_y, 0, 0, 0, 0);

