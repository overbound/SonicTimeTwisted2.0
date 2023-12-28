/// @description  Render background to surface
// refresh surface
if not surface_exists(surface) surface = surface_create(1024, 1024);
surface_set_target(surface);
// draw background
with sky event_perform(ev_draw, 0);
with stars event_perform(ev_draw, 0);
with clouds2 event_perform(ev_draw, 0);
with clouds1 event_perform(ev_draw, 0);
with tower2 event_perform(ev_draw, 0);
with tower1 event_perform(ev_draw, 0);
with building event_perform(ev_draw, 0);

surface_reset_target();
// draw complete surface 
draw_surface_ext(surface, camera_get_view_x(view_camera[view_current])+(objScreen.width/2 - 133) /*+66*/, camera_get_view_y(view_camera[view_current])-(objScreen.height/2 + 96)/*-184*/, 1, 1, 333, c_white, 1);

/* */
/*  */
