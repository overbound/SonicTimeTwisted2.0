/// @description  Render background to surface
// refresh surface
if not surface_exists(surface) surface = surface_create(1024, 1024);
surface_set_target(surface);
// draw background
with sky event_perform(ev_draw, 0);
with clouds2 event_perform(ev_draw, 0);
with clouds1 event_perform(ev_draw, 0);
with hills event_perform(ev_draw, 0);
with water event_perform(ev_draw, 0);
with grass2 event_perform(ev_draw, 0);
with grass1 event_perform(ev_draw, 0);
surface_reset_target();
// draw complete surface 
draw_surface_ext(surface, camera_get_view_x(view_camera[view_current])+(objScreen.width/2 - 147), camera_get_view_y(view_camera[view_current])-(objScreen.height/2 + 60)/*-216*/, 1, 1, 333, c_white, 1);

/* */
/*  */
