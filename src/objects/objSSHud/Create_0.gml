/// @description  Inherit event
event_inherited();

// character id(s)
character_id[0] = max(objGameData.character_id[0]-1, 0);
character_id[1] = max(objGameData.character_id[1]-1, 0);
image_speed =0;
// time stamp
time_stamp = "";
progsurface = noone;
pauseOffset = 0;
pauseState = 0;
controlState = 0;
axis = "";
inputFlash = 0;
white = 0;
timer = 0;
rings = 0;
menu = instance_create(0,0,objMenu);
hud_draw_script = draw_hud_ss_default;
if(is_touchscreen)
{
    hud_draw_script = draw_hud_ss_touchscreen;
}
event_user(0);

