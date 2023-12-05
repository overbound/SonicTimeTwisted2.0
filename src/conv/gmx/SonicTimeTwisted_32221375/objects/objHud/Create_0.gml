/// @description  Inherit event
event_inherited();

/// Initialize HUD
image_speed = 0;
// character id(s)
character_id[0] = max(objGameData.character_id[0]-1, 0);
character_id[1] = max(objGameData.character_id[1]-1, 0);
// time stamp
time_stamp = "";
timer_mode = objScreen.timer_mode;
pauseOffset = 0;
pauseState = 0;
controlState = 0;
shouldExit = false;
axis = -1;
darkbg = 0;
timer = 0;
rings = 0;
menu = instance_create(0,0,objMenu);
hud_draw_script = draw_hud_act_default;
if(is_touchscreen)
{
    hud_draw_script = draw_hud_act_touchscreen;
}
event_user(0);

