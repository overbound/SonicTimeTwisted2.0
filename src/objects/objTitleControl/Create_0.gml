event_inherited();

//always center the room's view to avoid borking the Title Screen
if(objScreen.width < 426) camera_set_view_pos(view_camera[view_current], (213-(objScreen.width / 2)), 0); else camera_set_view_pos(view_camera[view_current], 0, 0);

/// Initialize
image_speed = 0;
// 0 - first fade in
// 1 - screen with text (disclaimer/epilepsy)
// 2 - fade to OGS logo
// 3 - standard title screen behavior
// 4 - the disclaimer screen is opened from the options screen
state = 0;
alarm[0] = -1;
textAlpha = 0;
name=0;
levelSelect = 0;
start = false;
pauseOffset = 0;
pauseState = 3;
controlState = 0;
axis = "";
screenAlpha = 0;
gamepadSupport = true;
logoAlpha = 4;

skipping = 0;
// allow skipping after first launch
allow_skipping = !objProgram.first_run;
if(allow_skipping)
{
   event_user(0);
}
event_user(2);
level_select_max_presses = 0;
menu = instance_create(x,y,objMenu);
menu.default_state = 1;

// Names of the original team behind the game.
// The crawl is hardcoded to only include 6 names, and should remain this way
names = false;
names[0] = tr("Bryce Stock (Overbound)");
names[1] = tr("Hinchy");
names[2] = tr("VectorSatyr");
names[3] = tr("Dee Liteyears");
names[4] = tr("Mercury");
names[5] = tr("Shane (Sparks)");

// initialize the disclaimer screen in a dedicated event
event_user(1);
menu_is_touchscreen = false;

