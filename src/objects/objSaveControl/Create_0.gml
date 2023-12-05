/// @description  Inherit event
event_inherited();

/// Initialize objects for the screen and read saved data
// Play Save Screen music
set_zone_music(room);
play_music_intro(objMusic.musicIntroAsset, 0);
// Create Objects and Variables
slots[0]=instance_create(64,120,objNoSaveSlot);
slots[1]=instance_create(192,120,objSaveSlot);
slots[2]=instance_create(320,120,objSaveSlot);
slots[3]=instance_create(448,120,objSaveSlot);
slots[4]=instance_create(576,120,objSaveSlot);
slots[5]=instance_create(704,120,objSaveSlot);
slots[6]=instance_create(832,120,objSaveSlot);
slots[7]=instance_create(960,120,objSaveSlot);
slots[8]=instance_create(1088,120,objDeleteSlot);
slots[0].slotNumber = -1;
slots[1].slotNumber = 0;
slots[2].slotNumber = 1;
slots[3].slotNumber = 2;
slots[4].slotNumber = 3;
slots[5].slotNumber = 4;
slots[6].slotNumber = 5;
slots[7].slotNumber = 6;
slots[8].slotNumber = 7;

// this is needed for touchscreens
slots[0].position = 0;
slots[1].position = 1;
slots[2].position = 2;
slots[3].position = 3;
slots[4].position = 4;
slots[5].position = 5;
slots[6].position = 6;
slots[7].position = 7;
slots[8].position = 8;

xSpeed=0;
selectCheck = 1;
x=slots[1].x;
y=slots[1].y;
selectState = 0;
// left = 0 right = 1
stageLeftRight = 1;
stageDeleteConfirmSprite = sprDeleteConfirm;
flash_visibility = true;
flash_alpha = 1;
flash_counter = 0;

// some touchscreen variables
mouse_prev_x = 0;
mouse_prev_y = 0;
mouse_dx = 0;
mouse_dy = 0;
x_on_press = x;
y_on_press = y;
tap_registered = false;
drag_registered = false;
y_drag = 0;
hint_top = "";
hint_bottom = "";
if(is_touchscreen)
{
    __view_set( e__VW.Object, 0, noone );
    // hints update
    event_user(3);
}
hint_surface = -1;
hint_up_to_date = false;

if(objScreen.flashing_reduced)
{
    flash_update_event = 6;
    slot_draw_event = 7;
}
else
{
    flash_update_event = 4;
    slot_draw_event = 5;
}
mouse_x_scaled = get_mouse_x_with_scale();
mouse_y_scaled = get_mouse_y_with_scale();

