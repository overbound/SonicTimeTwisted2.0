/// @description States reference
/*

(reworked to include two touchscreen-specific states and no longer rely on a sprite_index)

0 - selecting a slot
1 - selecting an act in an existing save
2 - selecting a character for a new game
3 - centering camera on delete slot (touchscreen-specific)
4 - selecting a slot to delete
5 - confirming save slot deletion
6 - centering camera on slot to delete (touchscreen-specific)
7 - centering camera before cancelling delete mode (touchscreen-specific)

*/

/* */
/// Manage returning to the title screen
// This needs to be at the beginning, so that input_check_pressed() doesn't trigger
// while returning to state 0
if(selectState == 0)
{
    var cancel = false;
    if(input_check_pressed(cCANCEL))
    {
        cancel = true;
    }
    if(is_touchscreen)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            cancel =  point_in_rectangle(device_mouse_x(0), device_mouse_y(0), 
                __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 28, __view_get( e__VW.YView, 0 ) + 4,
                __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 4, __view_get( e__VW.YView, 0 ) + 28);
        }
    }
    if(cancel)
    {
        // at this point, the options have obviously been saved at least once
        objProgram.first_run = false;
        
        transition_to(objFadeWhiteFromSaveToTitle, titlescreen, 24);
    }
}

/* */
/// Switch input (if applies)
var prev_is_touchscreen = is_touchscreen;
script_execute(switch_script);
if(is_touchscreen != prev_is_touchscreen)
{
    if(is_touchscreen)
    {
        __view_set( e__VW.Object, 0, noone );
        __view_set( e__VW.HSpeed, 0, -1 );
    }
    else
    {
        __view_set( e__VW.Object, 0, objSaveControl );
        __view_set( e__VW.HSpeed, 0, 64 );
    }
    // hints update
    event_user(3);
}


if (!is_touchscreen)
{
{
/// Clear message
hint_top = "";
hint_bottom = "";
hint_up_to_date = false;

/* */
with (other) {
/// Horizontal Movement
__view_set( e__VW.Object, 0, self );
__view_set( e__VW.HSpeed, 0, -1 );
if selectState == 0 || selectState == 4 {
    if (selectState == 0 && selectCheck > 0) ||
        (selectState == 4 && selectCheck > 1)
      {
        if input_check_pressed(cLEFT) {
            xSpeed=-1;
            selectCheck -=1;
            play_sfx(sndBeep,10);
        }
    }
    
    if selectCheck < 8 {
        if input_check_pressed(cRIGHT) {
            xSpeed=1;
            selectCheck +=1;
            play_sfx(sndBeep,10);
        }
    }
}
else if selectState == 1 {
    if input_check_pressed(cLEFT) && slots[selectCheck].visiblePast==1 {
        stageLeftRight=0;
    }
    if input_check_pressed(cRIGHT) && slots[selectCheck].visibleFuture==1 {
        stageLeftRight=1;
    }
}
else if selectState == 5 {    
    if input_check_pressed(cLEFT) {
        // Delete slot - same code handles button press & smartphone click
        event_user(2);
        sprite_index = sprSaveControl;
        play_sfx(sndHurt, 0);
        selectState = 0;
        
    }
    if input_check_pressed(cRIGHT) {
        sprite_index = sprSaveControl;
        play_sfx(sndCancel, 0);
        selectState =0;    
    
    }   
}

/* */
}
/// Selector Movement
if x <> slots[selectCheck].x {    
    if(xSpeed == 1)
        x += 16;
    if(xSpeed == -1)
        x -= 16;
} else {
    xSpeed=0;
}

/* */
/// Vertical Controls and Actions
if xSpeed == 0 {
    if selectState == 0 || selectState == 4 {
        if input_check_pressed(cA) || input_check_pressed(cSTART) {
            // same code handles button press & smartphone click
            event_user(0);
        }
    }
    if selectState == 1 {
        with slots[selectCheck] {
            if input_check_pressed(cUP) {
                if lastFutureLevel > iconIndex || lastPastLevel > iconIndex
                    iconIndex += 1;
            }
            if input_check_pressed(cDOWN) {
                if iconIndex > 0
                    iconIndex -= 1;
            }
            if input_check_pressed(cB) {
                other.selectState = 0;
                allowLevelStart = false;
                play_sfx(sndCancel, 0);
            }
            if input_check_released(cA) || input_check_pressed(cSTART) {
                allowLevelStart = true;
            }
            if (input_check_pressed(cA) || input_check_pressed(cSTART)) && allowLevelStart == true {
                if input_check_pressed(cLEFT) && slots[selectCheck].visiblePast==1 {
                    stageLeftRight=0;
                }
                if input_check_pressed(cRIGHT) && slots[selectCheck].visibleFuture==1 {
                    stageLeftRight=1;
                }
                event_user(0);
            }
            if iconIndex < 0 {
                iconIndex = lastIndex;
            } else if iconIndex > lastIndex {
                iconIndex = 0;
            }
            if input_check_pressed(cUP) || input_check_pressed(cDOWN) {
                if pastLevels[iconIndex] == true {
                    visiblePast = 1;
                }
                else
                    visiblePast = 0;
                if futureLevels[iconIndex] == true {
                    visibleFuture = 1;
                }
                else if futureLevels[iconIndex] == false visibleFuture = 0;
            }
        }
    }
    if selectState == 2 {
        with slots[selectCheck] {
            if input_check_pressed(cUP) {
                characterSelect += 1;
            }
            if input_check_pressed(cDOWN) {
                characterSelect -= 1;
            }
            if characterSelect > CHARS_COUNT {
                characterSelect = 1;
            } else if characterSelect < 1 {
                characterSelect = CHARS_COUNT;
            }
            if input_check_released(cA) || input_check_pressed(cSTART) {
                allowLevelStart = true;
            }
            if input_check_pressed(cB) {
                other.selectState = 0;
            }
        }
        
        if (input_check_pressed(cA) || input_check_pressed(cSTART)) && slots[selectCheck].allowLevelStart == true {
            // start new game - same code handles button press & smartphone click
            event_user(1);
        }
    }
    
}

/* */
}
}
if (is_touchscreen)
{
{
/// Update mouse positions
mouse_x_scaled = get_mouse_x_with_scale();
mouse_y_scaled = get_mouse_y_with_scale();

/* */
/// Detect & distinguish press or drag
if(mouse_check_button_pressed(mb_left))
{
    mouse_prev_x = mouse_x_scaled - __view_get( e__VW.XView, 0 );
    mouse_prev_y = mouse_y_scaled - __view_get( e__VW.YView, 0 );
    mouse_dx = 0;
    mouse_dy = 0;
    mouse_click_registered = false;
    x_on_press = mouse_x_scaled + __view_get( e__VW.XView, 0 );
    y_on_press = mouse_y_scaled;
    
}
if(mouse_check_button(mb_left))
{
    mouse_dx = mouse_x_scaled - __view_get( e__VW.XView, 0 ) - mouse_prev_x;
    mouse_dy = mouse_y_scaled - __view_get( e__VW.YView, 0 ) - mouse_prev_y;
    mouse_prev_x = mouse_x_scaled - __view_get( e__VW.XView, 0 );
    mouse_prev_y = mouse_y_scaled - __view_get( e__VW.YView, 0 );
}
tap_registered = false;
drag_registered = false;
if(mouse_check_button_released(mb_left))
{
    switch(selectState)
    {
        case 0:
        case 4:
        case 5:
            // selecting a slot
            // within 2 pixels is considered a touch
            if(abs(mouse_x_scaled + __view_get( e__VW.XView, 0 ) - x_on_press) <= 2)
            {
                tap_registered = true;
            }
            // else the screen was dragged, let's not do anything
            mouse_dx = 0;
            mouse_dy = 0;
            break;
        case 1:
        case 2:
            // selecting a character for a new game or a zone via vertical dragging
            // within 2 pixels is considered a touch
            if (abs(y_on_press - mouse_y_scaled) <= 2)
            {
                tap_registered = true;
            }
            else
            {
                y_drag = mouse_y_scaled - y_on_press;
                drag_registered = true;
            }
            break;
    }

}

/* */
/// Recenter camera

// simply setting the view_object is not enough because we'll have to deal
// with room bounds
if(selectState == 1 || selectState == 2 || selectState == 3 || selectState == 6 || selectState == 7)
{
    var diff_center = (__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) div 2)) - x;
    if(diff_center != 0)
    {
        if(diff_center <= -16)
        {
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (16) );
        }
        else
        {
            if((diff_center > -16 && diff_center <= 0) || (diff_center < 16 && diff_center >= 0))
            {
                __view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 ) div 2) );
                if(selectState == 3)
                {
                    selectState = 4;
                }
                if(selectState == 6)
                {
                    selectState = 5;
                }
                if(selectState == 7)
                {
                    selectState = 0;
                }
            }
            else
            {
                if(diff_center >= 16)
                {
                    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (16) );
                }
            }
        }
    }
    else
    {
        __view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 ) div 2) );
        if(selectState == 3)
        {
            selectState = 4;
        }
        if(selectState == 6)
        {
            selectState = 5;
        }
        if(selectState == 7)
        {
            selectState = 0;
        }
    }
}
/*
view_object[0] = self;
view_hspeed[0] = 24;
*/


if (selectState == 1)
{
/// select act
if(drag_registered)
{
    if (y_drag < -8)
    {
        with slots[selectCheck] {
            if lastFutureLevel > iconIndex || lastPastLevel > iconIndex
                iconIndex += 1;
        }
    }
    if (y_drag > 8)
    {
        with slots[selectCheck] {
            if iconIndex > 0
                iconIndex -= 1;
        }
    }
    with slots[selectCheck] {
        if iconIndex < 0 {
            iconIndex = lastIndex;
        } else if iconIndex > lastIndex {
            iconIndex = 0;
        }
    }
    if(abs(y_drag) > 8)
    {
        with slots[selectCheck] {
            if pastLevels[iconIndex] == true {
                visiblePast = 1;
            }
            else
                visiblePast = 0;
            if futureLevels[iconIndex] == true {
                visibleFuture = 1;
            }
            else if futureLevels[iconIndex] == false visibleFuture = 0;
        }
    }
}

var cancelled = false;
if(tap_registered)
{
    if(point_in_rectangle(mouse_x_scaled, mouse_y_scaled,
        slots[selectCheck].bbox_left, slots[selectCheck].bbox_top,
        slots[selectCheck].bbox_right, slots[selectCheck].bbox_bottom))
    {
        // depending on where the click is and what can be selected,
        // start the game or change the time period
        
		var _mouse_x_scaled = mouse_x_scaled;
		var _mouse_y_scaled = mouse_y_scaled;
        with slots[selectCheck] {
            // the check is only done if both past and future can be displayed
            // also, tapping an already selected time period starts the game
            var _do_start = true;
            if (_mouse_y_scaled <= bbox_top + 65)
            {
                if(visiblePast && visibleFuture)
                {
                    if(_mouse_x_scaled < x && other.stageLeftRight == 1)
                    {
                        other.stageLeftRight = 0;
                        _do_start = false;
                    }
                    else
                    {
                        if(_mouse_x_scaled >= x && other.stageLeftRight == 0)
                        {
                            other.stageLeftRight = 1;
                            _do_start = false;
                        }
                    }
                }
            }
            if(_do_start)
            {
                event_user(0);
            }
        }
    }
    else
    {
        cancelled = true;
    }
}
else
{
    if(keyboard_check_released(DEVICE_BACK_BUTTON))
    {
        cancelled = true;
    }
}
if(cancelled)
{
    selectState = 0;
    slots[selectCheck].allowLevelStart = false;
    // Hints update
    event_user(3);
}

/* */
}
else
{
{
if (selectState == 2)
{
/// select character
if(drag_registered)
{
    if (y_drag < -8)
    {        
        with slots[selectCheck] {
            characterSelect += 1;
            if(characterSelect > CHARS_COUNT)
            {
                characterSelect = 1;
            }
            play_sfx(sndBeep, 0);
        }
    }
    if (y_drag > 8)
    {
        with slots[selectCheck] {
            characterSelect -= 1;
            if(characterSelect < 1)
            {
                characterSelect = CHARS_COUNT;
            }
            play_sfx(sndBeep, 0);
        }
    }
}


/// confirm or cancel
var cancelled = false;
if(tap_registered)
{
    if(point_in_rectangle(mouse_x_scaled, mouse_y_scaled,
        slots[selectCheck].bbox_left, slots[selectCheck].bbox_top,
        slots[selectCheck].bbox_right, slots[selectCheck].bbox_bottom))
    {
        // create new save file - same code handles button press & smartphone click
        event_user(1);
        play_sfx(sndBeep, 0);
    }
    else
    {
        cancelled = true;
    }
}
else
{
    if(keyboard_check_released(DEVICE_BACK_BUTTON))
    {
        cancelled = true;
    }
}
if(cancelled)
{
    play_sfx(sndCancel, 0);
    selectState = 0;
    slots[selectCheck].allowLevelStart = false;
    // Hints update
    event_user(3);
}

/* */
}
else
{
{
if (selectState == 5)
{
{
/// Manage clicks
if(tap_registered)
{

    if(point_in_rectangle(mouse_x_scaled, mouse_y_scaled,
        slots[selectCheck].bbox_left, slots[selectCheck].bbox_top,
        slots[selectCheck].bbox_right, slots[selectCheck].bbox_bottom))
    {
        event_user(2);
        sprite_index = sprSaveControl;
        play_sfx(sndHurt, 0);
        selectState = 0;
        // Hints update
        event_user(3);
    }
    else
    {
        play_sfx(sndCancel, 0);
        sprite_index = sprSaveControl;
        selectState = 0;
        // Hints update
        event_user(3);
    }
}

/* */
}
}
else
{
{
if (selectState == 0 || selectState == 4)
{
{
/// Drag camera
__view_set( e__VW.Object, 0, noone );
__view_set( e__VW.XView, 0, max(
    slots[0].x  - (__view_get( e__VW.WView, 0 ) div 2),
    min(
        __view_get( e__VW.XView, 0 ) - mouse_dx,
        slots[8].x  - (__view_get( e__VW.WView, 8 ) div 2),
    )
) );
if(selectState == 4 || selectState == 6)
{
    x = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) div 2);
}

/* */
/// Manage clicks
if(tap_registered)
{
    var clicked_on = instance_position(mouse_x_scaled, mouse_y_scaled, objSaveSlot);
    if(clicked_on != noone)
    {
        play_sfx(sndBeep, 0);
        selectCheck = clicked_on.position;
        x = clicked_on.x;
        event_user(0);
    }
    else
    {
        clicked_on = instance_position(mouse_x_scaled, mouse_y_scaled, objNoSaveSlot);
        if(clicked_on != noone)
        {
            play_sfx(sndBeep, 0);
            selectCheck = clicked_on.position;
            x = clicked_on.x;
            event_user(0);
        }
        else
        {
            clicked_on = instance_position(mouse_x_scaled, mouse_y_scaled, objDeleteSlot);
            if(clicked_on != noone)
            {
                play_sfx(sndBeep, 0);
                selectCheck = clicked_on.position;
                x = clicked_on.x;
                event_user(0);
            }
        }
    }
}

/* */
}
}
}
}
}
}
}
}
/// Done processing
mouse_click_registered = false;
mouse_drag_registered = false;
mouse_dx = 0;

/* */
}
}
/// visibility flash
event_user(flash_update_event);


/* */
/*  */
