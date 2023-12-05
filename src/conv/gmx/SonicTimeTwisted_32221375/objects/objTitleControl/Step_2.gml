/// @description  menu end step
if(state == 3 && skipping == 0)
{
    if menu.state != 0 {
        with(menu) event_user(2);
    }
    image_index = objScreen.image_index div 8;
}

/// handle returning from state 4 (displaying the disclaimers when called from the options menu)
if(state == 4)
{
    if(is_fallback_touchscreen)
    {
        if(device_mouse_check_button_released(0, mb_left))
        {
            menu_is_touchscreen = true;
            state = 3;
            with(menu)
            {
                state = 2;
                menu_fn_reset_inputs();
            }
        }
    }
    if(!is_touchscreen)
    {
        if(input_check_pressed(cB))
        {
            play_sfx(sndCancel);
            menu_is_touchscreen = false;
            state = 3;
            with(menu)
            {
                state = 2;
                menu_fn_reset_inputs();
            }
        }
    }
}

