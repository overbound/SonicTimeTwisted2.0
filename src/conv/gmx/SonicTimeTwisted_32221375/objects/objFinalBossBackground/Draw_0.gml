/// @description  Render background to surface
var clean = false;
var shift = -128 * scale;

if not surface_exists(surface_warp) {
    surface_warp = surface_create(256,256);
    clean = true;
    texture_warp = surface_get_texture(surface_warp);
}

if not surface_exists(copy_surface) {
    copy_surface = surface_create(256,256);
}

surface_copy(copy_surface, 0, 0, surface_warp);

surface_set_target(surface_warp);
if (clean) draw_clear_alpha(c_black, 0);
d3d_transform_set_rotation_z(angle_warp);
d3d_transform_add_translation(128, 128, 0);
draw_surface_ext(copy_surface, shift, shift, scale, scale, 0, c_white, 1);
d3d_transform_set_identity();
draw_sprite_ext(WhirlSpr, 0, 128, 128, 1, 1, whirl_angle, c_white, 1);
surface_reset_target();

// refresh surface
//if not surface_exists(surface_warp) surface_warp = surface_create(512,256);
xoffset+=xspeed;
shader_set(NebulaShader);
texture_set_stage(sampler_index_warp, texture_warp);
draw_background(NebulaBkg, __view_get( e__VW.XView, view_current )-42, __view_get( e__VW.YView, view_current )-128);
draw_background_tiled(NebulaBkg, __view_get( e__VW.XView, view_current )+xoffset, __view_get( e__VW.YView, view_current )-128)
shader_reset();
with (objParallax) event_perform(ev_draw, 0);
/*
draw_surface(surface_warp, view_xview[view_current]-215, view_yview[view_current]-300);
surface_reset_target()
*/


/* */
/*  */
