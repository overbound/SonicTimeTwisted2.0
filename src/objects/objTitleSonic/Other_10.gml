/// @description  called when skipping to title screen
alarm[0] = -1;
sprite_index  = sprTitleSonic;
image_speed = 0.125;
gravity=0;
speed=0;
state=2;
__view_set( e__VW.YView, 0, room_height - __view_get( e__VW.HView, 0 ) );
y = objTitleRing.y;
with objTitleRing movement = 1;
show_debug_message("Skipping animation...");

