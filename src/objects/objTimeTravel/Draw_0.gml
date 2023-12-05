if !surface_exists(tt_surface)
    tt_surface = surface_create(426, 240);
// set the drawing target to the surface
surface_set_target(tt_surface);
// clear the surface
draw_clear_alpha(c_black, 0);
// draw the sprite mirrored on the y axis to create the zipper shape
draw_sprite_ext(spr, floor(image_index), 0, 0, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr, floor(image_index), 0, 120, 2, -2, 0, c_white, 1);
// reset the drawing target to the screen
surface_reset_target();

timetravel_shader_draw(426, 240, __view_get( e__VW.XView, 0 )+xoffset, __view_get( e__VW.YView, 0 ));

