/// @description  PostDraw event if integer scaling ON - draw app surface now
if (interpolation == 2) {
    gpu_set_texfilter(false);
    draw_surface_ext(application_surface, intscalex, intscaley, window_scale, window_scale, 0, c_white, 1);
    gpu_set_texfilter(true);
} else {
    draw_surface_ext(application_surface, intscalex, intscaley, window_scale, window_scale, 0, c_white, 1);
}   

