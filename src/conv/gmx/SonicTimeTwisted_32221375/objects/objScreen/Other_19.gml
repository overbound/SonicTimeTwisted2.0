/// @description  PostDraw event if integer scaling ON - draw app surface now
if (interpolation == 2) {
    texture_set_interpolation(false);
    draw_surface_ext(application_surface, intscalex, intscaley, window_scale, window_scale, 0, c_white, 1);
    texture_set_interpolation(true);
} else {
    draw_surface_ext(application_surface, intscalex, intscaley, window_scale, window_scale, 0, c_white, 1);
}   

