/// @description  Render background to surface
draw_set_color(skyBlue);
//draw_rectangle(view_xview,view_yview+80,view_xview+view_wport,view_yview+view_hport-80,false);
draw_set_color(c_white);
// refresh surface
if not surface_exists(surface) surface = surface_create(512,256);
surface_set_target(surface);
// draw background
draw_clear_alpha(c_black, 0);
with objParallax event_perform(ev_draw, 0);
//with objSSZBGParallax event_perform(ev_draw, 0);

surface_reset_target()
shader_set(DeflateShader);
gpu_set_texfilter(true);
// draw complete surface
draw_surface_ext(surface, camera_get_view_x(view_camera[view_current])-43, camera_get_view_y(view_camera[view_current]), 1, 1, 0, c_white, 1);
gpu_set_texfilter(false);
shader_reset();

// covers for bottom and top of surface
draw_sprite(sprSSZBGCover,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
draw_sprite_ext(sprSSZBGCover,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+objScreen.height-sprite_height+6,1,-1,0,c_white,1);

