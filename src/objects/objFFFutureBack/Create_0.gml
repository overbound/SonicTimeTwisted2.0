action_inherited();
// Initialize background
// parallax_create(tiled, back, left, top, width, height, hspeed, vspeed, relative_x,
//                  relative_y, absolute_x, absolute_y, separation_x, separation_y);
// parallax_create_sprite(tiled, sprite, imgspeed, hspeed, vspeed, relative_x, relative_y,
//                          absolute_x, absolute_y, separation_x, separation_y);

var relative_y;
// defaults
surface = -1;
relative_y = .81;
// Bottom
// Rocks
parallax_create(1, backFFFRocksTop, 0, 0, 128, 128, 0, 0, 0.86, relative_y, 0, 466, 0, 0);
parallax_create(1, backFFFRocks, 0, 0, 128, 128, 0, 0, 0.86, relative_y, 0, 594, 0, 0);
// Cave
parallax_create(1, backFFFCave, 0, 0, 64, 32, 0, 0, 0.88, relative_y, 0, 722, 0, 0);
parallax_create(1, backFFFCave, 0, 32, 64, 64, 0, 0, 0.88, relative_y, 0, 754, 0, 0);
// Lights
parallax_create(1, backFFFLights, 0, 0, 256, 64, 0, 0, 0.90, relative_y, 0, 818, 0, 0);
// Machines
parallax_create(1, backFFFMachines, 0, 0, 256, 96, 0, 0, 0.90, relative_y, 0, 882, 0, 0);
// Top
//Waterfalls
parallax_create_sprite(1, sprFFWaterfall, .25, -.12, 0, .6, relative_y, 128, 266, 620, 0);
parallax_create_sprite(1, sprFFWaterfall, .25, -.12, 0, .6, relative_y, 128, 328, 620, 0);
parallax_create(1, backFFFIsland2, 0, 0, 80, 82, -.12, 0, 0.60, relative_y, 80, 256, 560, 0);
parallax_create_sprite(1, sprFFWaterfall, .25, -.14, 0, .62, relative_y, 48, 66, 424, 0);
parallax_create_sprite(1, sprFFWaterfall, .25, -.14, 0, .62, relative_y, 48, 128, 424, 0);
parallax_create_sprite(1, sprFFWaterfall, .25, -.14, 0, .62, relative_y, 48, 190, 424, 0);
parallax_create_sprite(1, sprFFWaterfall, .25, -.14, 0, .62, relative_y, 48, 252, 424, 0);
parallax_create(1, backFFFIsland2, 0, 0, 80, 82, -.14, 0, 0.62, relative_y, 0, 56, 360, 0);
parallax_create(1, backFFFIsland1, 0, 0, 144, 86, -.12, 0, 0.60, relative_y, 0, 180, 280, 0);


// Sky
parallax_create(1, backFFFSky, 0, 0, 16, 304, 0, 0, 0.80, relative_y, 0, 0, 0, 0);
// Clouds
parallax_create(1, backFFFClouds, 0, 0, 128, 32, -.06, 0, 0.80, relative_y, 0, 304, 0, 0);
// parallax_create(tiled, back, left, top, width, height, hspeed, vspeed, relative_x,
//                  relative_y, absolute_x, absolute_y, separation_x, separation_y);
// Water
parallax_create(1, backFFFWater, 0, 0, 64, 16, -.1, 0, 0.78, relative_y, 0, 336, 0, 0);
parallax_create(1, backFFFWater, 0, 16, 64, 16, -.2, 0, 0.77, relative_y, 0, 352, 0, 0);
parallax_create(1, backFFFWater, 0, 32, 64, 16, -.3, 0, 0.76, relative_y, 0, 368, 0, 0);
parallax_create(1, backFFFWater, 0, 48, 64, 16, -.4, 0, 0.75, relative_y, 0, 384, 0, 0);
parallax_create(1, backFFFWater, 0, 64, 64, 16, -.5, 0, 0.74, relative_y, 0, 400, 0, 0);
parallax_create(1, backFFFWater, 0, 64, 64, 16, -.6, 0, 0.73, relative_y, 0, 416, 0, 0);
parallax_create(1, backFFFWater, 0, 48, 64, 16, -.7, 0, 0.72, relative_y, 0, 432, 0, 0);
parallax_create(1, backFFFWater, 0, 64, 64, 16, -.8, 0, 0.71, relative_y, 0, 448, 0, 0);
parallax_create(1, backFFFWater, 0, 48, 64, 16, -.9, 0, 0.70, relative_y, 0, 464, 0, 0);

