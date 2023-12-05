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
draw_surface_ext(surface, __view_get( e__VW.XView, view_current )+66, __view_get( e__VW.YView, view_current )-180/*-216*/, 1, 1, 333, c_white, 1);

/* */
/*  */
