d3d_set_projection_ortho(0, 0, 426, 240, 0);
/*d3d_set_hidden(false);
draw_rectangle_color(0, 0, 320, 120, c_black, c_black, c_navy, c_navy, false);
d3d_set_hidden(true);*/
d3d_set_projection_ext(x, y, z, xto, yto, zto, 0, 0, 1, fov, __view_get( e__VW.WPort, 0 ) / __view_get( e__VW.HPort, 0 ), 1, 24000);
draw_set_color(c_white);
d3d_draw_cylinder(x - 2000, y + 2000, 1600, x + 2000, y - 2000, -1000, background_get_texture(background), bgxrepeat, 1, false, 16);

/* */
/*  */
