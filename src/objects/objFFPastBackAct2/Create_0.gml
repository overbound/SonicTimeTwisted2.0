action_inherited();
/// Initialize background
var relative_y = 0.90;
// Bottom
//castle wall
parallax_create(1, backFFPWall, 0, 0, 48, 96, 0, 0, 0.80, relative_y, 0, 518, 0, 0);
//front ceiling
parallax_create(1, backFFPCeilingFront, 0, 0, 184, 11, 0, 0, 0.80, relative_y, 0, 614, 0, 0);
parallax_create(1, backFFPCeilingFront, 0, 12, 184, 11, 0, 0, 0.82, relative_y, 0, 624, 0, 0);
parallax_create(1, backFFPCeilingFront, 0, 0, 184, 11, 0, 0, 0.84, relative_y, 0, 634, 0, 0);
parallax_create(1, backFFPCeilingFront, 0, 12, 184, 11, 0, 0, 0.86, relative_y, 0, 644, 0, 0);
//large arch
parallax_create(1, backFFPArchesFront, 0, 0, 138, 168, 0, 0, 0.86, relative_y, 0, 654, 0, 0);
parallax_create(1, backFFPArchesFront, 0, 0, 138, 168, 0, 0, 0.86, relative_y, 0, 822, 0, 0);
//back ceiling
parallax_create(1, backFFPCeilingBack, 0, 0, 64, 8, 0, 0, 0.88, relative_y, 0, 684, 0, 0);
parallax_create(1, backFFPCeilingBack, 0, 8, 64, 7, 0, 0, 0.90, relative_y, 0, 692, 0, 0);
//small arch
parallax_create(1, backFFPArchesBack, 0, 0, 256, 160, 0, 0, 0.90, relative_y, 0, 698, 0, 0);
parallax_create(1, backFFPArchesBack, 0, 0, 256, 160, 0, 0, 0.90, relative_y, 0, 854, 0, 0);
// Top
//ice
parallax_create(1, backFFPIceFloats, 0, 0, 110, 12, 0, 0, 0.80, relative_y, 0, 470, 0, 0);
parallax_create(1, backFFPIceFloats, 0, 12, 110, 12, -.14, 0, 0.82, relative_y, 0, 482, 0, 0);
parallax_create(1, backFFPIceFloats, 0, 24, 110, 8, -.16, 0, 0.84, relative_y, 0, 494, 0, 0);
parallax_create(1, backFFPIceFloats, 0, 32, 110, 32, -.18, 0, 0.86, relative_y, 0, 502, 0, 0);
//castle
parallax_create(1, backFFPIceCastle, 0, 0, 128, 133, 0, 0, 0.80, relative_y, 0, 337, 0, 0);
//trees
parallax_create(1, backFFPTrees, 0, 0, 64, 8, 0, 0, 0.93, relative_y, 0, 351, 0, 0);
parallax_create(1, backFFPTrees, 0, 8, 64, 8, 0, 0, 0.92, relative_y, 0, 351, 0, 0);
parallax_create(1, backFFPTrees, 0, 16, 64, 16, 0, 0, 0.91, relative_y, 0, 359, 0, 0);
parallax_create(1, backFFPTrees, 0, 32, 64, 32, 0, 0, 0.90, relative_y, 0, 375, 0, 0);
parallax_create(1, backFFPTrees, 0, 32, 64, 32, 0, 0, 0.89, relative_y, 0, 407, 0, 0);

// stars
for (var i=0; i<28; i+=1) parallax_create(1, backFFPStars, 0, (i mod 4)*16, 64, 16, 0, 0, 0.80+(i*0.005), relative_y, 0, i*16, 0, 0);
/*
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.80, relative_y, 0, 0, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.805, relative_y, 0,  16, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.81, relative_y, 0, 32, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.815, relative_y, 0, 48, 0, 0);
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.82, relative_y, 0, 64, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.825, relative_y, 0, 80, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.83, relative_y, 0, 96, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.835, relative_y, 0, 112, 0, 0);
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.84, relative_y, 0, 128, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.845, relative_y, 0, 144, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.85, relative_y, 0, 160, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.855, relative_y, 0, 176, 0, 0);
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.86, relative_y, 0, 192, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.865, relative_y, 0,  208, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.87, relative_y, 0, 224, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.875, relative_y, 0, 240, 0, 0);
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.885, relative_y, 0, 256, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.89, relative_y, 0, 272, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.895, relative_y, 0, 288, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.9, relative_y, 0, 304, 0, 0);
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.905, relative_y, 0, 320, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.91, relative_y, 0, 336, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.915, relative_y, 0, 152, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.92, relative_y, 0, 368, 0, 0);
parallax_create(1, backFFPStars, 0, 0, 256, 16, 0, 0, 0.925, relative_y, 0, 384, 0, 0);
parallax_create(1, backFFPStars, 0, 16, 256, 16, 0, 0, 0.93, relative_y, 0, 400, 0, 0);
parallax_create(1, backFFPStars, 0, 32, 256, 16, 0, 0, 0.935, relative_y, 0, 416, 0, 0);
parallax_create(1, backFFPStars, 0, 48, 256, 16, 0, 0, 0.94, relative_y, 0, 432, 0, 0);

/* */
action_kill_object();
/*  */
