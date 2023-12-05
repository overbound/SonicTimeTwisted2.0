action_inherited();
// Initialize background
// parallax_create(tiled, back, left, top, width, height, hspeed, vspeed, relative_x,
//                  relative_y, absolute_x, absolute_y, separation_x, separation_y);
// parallax_create_sprite(tiled, sprite, imgspeed, hspeed, vspeed, relative_x, relative_y,
//                          absolute_x, absolute_y, separation_x, separation_y);

var relative_y;
// defaults
surface = -1;
relative_y = (room_height-320)/(room_height-objScreen.height);
parallax_create(1, backPPZHills, 0, 0, 144, 48, 0, 0, 0.86, relative_y, 0, 212, 0, 0);
parallax_create(1, backPPZMountain, 0, 0, 144, 48, 0, 0, 0.9, relative_y, 0, 129, 0, 0);
parallax_create(1, backPPZPipe, 0, 0, 112, 70, 0, 0, .84, relative_y, 0, 260, 0, 0);
// lava
parallax_create(1, backPPZLava, 0, 0, 64, 16, -.1, 0, 0.9, relative_y, 0, 170, 0, 0);
parallax_create(1, backPPZLava, 0, 16, 64, 16, -.15, 0, 0.9, relative_y, 0, 186, 0, 0);
parallax_create(1, backPPZLava, 0, 32, 64, 32, -.2, 0, 0.9, relative_y, 0, 202, 0, 0);
parallax_create(1, backPPZLava, 0, 32, 64, 32, -.25, 0, 0.9, relative_y, 0, 234, 0, 0);
instance_create(0,0,objPPBackEarth);
//parallax_create(0, backPPZPlanet, 0, 0, 152, 64, 0, 0, 1, relative_y, 128, 96, 0, 0);
// sun
//instance_create(0, 0, objNebula);

/// Nebula Shader
angle_change = 2;
angle_warp = -15;
scale = 1.1;
sampler_index_warp = shader_get_sampler_index(NebulaShader, "warp");
surface_warp = -1;
copy_surface = -1;
texture_warp = pointer_null;
whirl_angle = 0;

