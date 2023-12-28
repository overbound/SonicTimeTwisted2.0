event_inherited();
/// Initialize
image_speed = 0;
// properties
left = 0;
top = 0;
right = room_width;
bottom = room_height;
ground_mode = true;
// panning
offset_x = 0;
offset_y = 0;
panning_hspeed = 0;
panning_vspeed = 0;
// setup view
view_id = instance_number(objCamera) - 1;
__view_set( e__VW.XView, view_id, clamp(x-objScreen.width*0.5, left, right-objScreen.width) );
__view_set( e__VW.YView, view_id, clamp(y-objScreen.height*0.5, top, bottom-objScreen.height) );
screenShake=false;
view_xorigin=camera_get_view_x(view_camera[0]);
view_yorigin=camera_get_view_y(view_camera[0]);
xSpeed = 0;
shake=false;

