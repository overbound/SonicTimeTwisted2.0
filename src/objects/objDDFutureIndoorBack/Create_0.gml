action_inherited();
/// Initialize background
var relative_y = .95;

// big cross
parallax_create(1, backDDFCross, 0, 0, 352, 304, 0, 0, 0.6, relative_y, 0, 48, 0, 0);
// beam
parallax_create(1, backDDFBeam, 0, 0, 32, 48, 0, 0, 0.6, relative_y, 0, 284, 0, 0);
parallax_create(1, backDDFBeam, 0, 0, 32, 48, 0, 0, 0.6, relative_y, 0, 0, 0, 0);

// small cross
parallax_create(1, backDDFSmallCross, 0, 0, 78, 67, 0, 0, 0.88, relative_y, 0, 133, 0, 0);
// small beams
parallax_create(1, backDDFSmallBeam, 0, 0, 32, 37, 0, 0, 0.825, relative_y, 0, 80, 0, 0);
parallax_create(1, backDDFSmallBeam, 0, 0, 32, 37, 0, 0, 0.825, relative_y, 0, 216, 0, 0);

// ceiling
parallax_create(1, backDDFFloor, 0, 0, 144, 16, 0, 0, 0.76, relative_y, 0, 48, 0, 0);
parallax_create(1, backDDFFloor, 0, 0, 144, 16, 0, 0, 0.74, relative_y, 0, 64, 0, 0);
parallax_create(1, backDDFSmallFloor, 0, 0, 72, 8, 0, 0, 0.85, relative_y, 0, 117, 0, 0);
parallax_create(1, backDDFSmallFloor, 0, 0, 72, 8, 0, 0, 0.83, relative_y, 0, 125, 0, 0);
// floors
parallax_create(1, backDDFFloor, 0, 0, 144, 16, 0, 0, 0.76, relative_y, 0, 253, 0, 0);
parallax_create(1, backDDFFloor, 0, 0, 144, 16, 0, 0, 0.74, relative_y, 0, 269, 0, 0);
parallax_create(1, backDDFSmallFloor, 0, 0, 72, 8, 0, 0, 0.85, relative_y, 0, 200, 0, 0);
parallax_create(1, backDDFSmallFloor, 0, 0, 72, 8, 0, 0, 0.83, relative_y, 0, 208, 0, 0);


// wall
parallax_create(1, backDDFWall, 0, 0, 160, 160, 0, 0, 0.98, relative_y, 0, 80, 0, 0);

