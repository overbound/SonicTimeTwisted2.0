/// @description  Render Background Elements
draw_sprite(sprTitleFog,0,304,1960);

// set the drawing target to the surface
if not surface_exists(tt_surface) tt_surface = surface_create(426, 240);
surface_set_target(tt_surface);
// clear the surface
draw_clear_alpha(c_black, 0);
// draw the sprite mirrored on the y axis to create the zipper shape
//draw_sprite_ext(spr, floor(image_index), xoffset, 0, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr, floor(image_index), 0, 1, 1, 1, 0, c_white, 1);
// reset the drawing target to the screen
surface_reset_target();

timetravel_shader_draw(426, 240, x, y);

// draw the surface again below, without the shader
// so you can see the untextured animation
if (surface_exists(tt_surface)) draw_surface(tt_surface, 0,512);

