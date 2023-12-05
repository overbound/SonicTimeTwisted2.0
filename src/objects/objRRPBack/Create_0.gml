action_inherited();
/// Initialize background
var relative_y = 0.9;
// cloud
parallax_create(1, backRRPCloud, 0, 0, 64, 16, 0, 0, 0.95, relative_y, 0, 315, 0, 0); 
parallax_create(1, backRRPCloud, 0, 16, 64, 16, 0, 0, 0.93, relative_y, 0, 331, 0, 0); 
parallax_create(1, backRRPCloud, 0, 32, 64, 16, 0, 0, 0.91, relative_y, 0, 347, 0, 0);
parallax_create(1, backRRPCloud, 0, 48, 64, 32, 0, 0, 0.89, relative_y, 0, 363, 0, 0);
//parallax_create(1, backDDPWater, 0, 106, 96, 50, 0, 0, 0.87, relative_y, 0, 470, 0, 0);
parallax_create(1, backRRPGround, 0, 0, 112, 36, 0, 0, 0.95, relative_y, 0, 395, 0, 0); 
littlePlanet=instance_create(0, 0, objLittlePlanetPast);
parallax_create(1, backRRPBigClouds, 0, 0, 310, 88, 0, 0, 0.96, relative_y, 0, 200, 0, 0); 
// sky
parallax_create(1, backRRPSky, 0, 0, 16, 320, 0, 0, 0.98, relative_y, 0, 0, 0, 0);

