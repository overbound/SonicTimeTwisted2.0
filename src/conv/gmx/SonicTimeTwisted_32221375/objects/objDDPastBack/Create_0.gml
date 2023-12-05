action_inherited();
/// Initialize background
var relative_y = 0.85;

// rocks small
parallax_create(1, backDDPRockTop, 0, 0, 64, 64, 0, 0, 0.85, relative_y, 0, 356, 0, 0);
parallax_create(1, backDDPRock, 0, 0, 64, 64, 0, 0, 0.82, relative_y, 0, 420, 0, 0);
parallax_create(1, backDDPRock, 0, 0, 64, 64, 0, 0, 0.79, relative_y, 0, 484, 0, 0);
parallax_create_sprite(true, sprPastDynamo, .0225, 0, 0, 0.95, relative_y, 320, 280, 640, 0);
// water
parallax_create(1, backDDPWater, 0, 0, 96, 13, 0, 0, 0.95, relative_y, 0, 314, 0, 0); 
parallax_create(1, backDDPWater, 0, 13, 96, 36, 0, 0, 0.93, relative_y, 0, 321, 0, 0); 
parallax_create(1, backDDPWater, 0, 32, 96, 18, 0, 0, 0.91, relative_y, 0, 340, 0, 0);
parallax_create(1, backDDPWater, 0, 50, 96, 16, 0, 0, 0.89, relative_y, 0, 354, 0, 0);
//parallax_create(1, backDDPWater, 0, 106, 96, 50, 0, 0, 0.87, relative_y, 0, 470, 0, 0);

// sun
instance_create(0, 0, objDDPSaturn);
// sky
parallax_create(1, backDDPSky, 0, 0, 16, 320, 0, 0, 0.98, relative_y, 0, 0, 0, 0);

