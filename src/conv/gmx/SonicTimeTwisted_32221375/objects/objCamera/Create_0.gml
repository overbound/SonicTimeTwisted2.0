action_inherited();
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
__view_set( e__VW.XView, view_id, clamp(x-__view_get( e__VW.WView, view_id )*0.5, left, right-__view_get( e__VW.WView, view_id )) );
__view_set( e__VW.YView, view_id, clamp(y-__view_get( e__VW.HView, view_id )*0.5, top, bottom-__view_get( e__VW.HView, view_id )) );
screenShake=false;
view_xorigin=__view_get( e__VW.XView, 0 );
view_yorigin=__view_get( e__VW.YView, 0 );
xSpeed = 0;
shake=false;

