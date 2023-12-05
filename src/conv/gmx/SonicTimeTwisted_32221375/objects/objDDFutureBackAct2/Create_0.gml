action_inherited();
/// Initialize background
var relative_y = 0.97;
// Hills (bottom)
parallax_create(1, backVVFHills2, 0, 0, 272, 96, 0, 0, 0.48, relative_y, 0, 440, 0, 0);
// hills small
parallax_create(1, backDDFSmallHills, 0, 0, 160, 45, 0, 0, 0.95, relative_y, 0, 352, 0, 0);
// sand
parallax_create(1, backDDFSand, 0, 0, 112, 10, 0, 0, 0.98, relative_y, 0, 378, 0, 0); 
parallax_create(1, backDDFSand, 0, 10, 112, 16, 0, 0, 0.93, relative_y, 0, 388, 0, 0); 
parallax_create(1, backDDFSand, 0, 26, 112, 32, 0, 0, 0.91, relative_y, 0, 404, 0, 0);
parallax_create(1, backDDFSand, 0, 60, 112, 46, 0, 0, 0.89, relative_y, 0, 434, 0, 0);
parallax_create(1, backDDFSand, 0, 106, 112, 50, 0, 0, 0.87, relative_y, 0, 470, 0, 0);
// sun
instance_create(0, 0, objDDFutureBackSun);
// sky
parallax_create(1, backDDFSky, 0, 0, 16, 256, 0, 0, 0.85, relative_y, 0, 128, 0, 0);

