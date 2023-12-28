//always center the room's view to avoid borking the Title Screen
if(objScreen.aspect_mode) camera_set_view_pos(view_camera[view_current], 53, camera_get_view_y(view_camera[view_current]));
else camera_set_view_pos(view_camera[view_current], 0, camera_get_view_y(view_camera[view_current]));

if (state < 3)
{
{
switch(state)
{
    case 0:
        if(textAlpha < 1)
        {
            textAlpha += 0.033;
        }
        if(textAlpha >= 1)
        {
            textAlpha = 1;
            state = 1;
        }
        break;
    case 1:
        if(is_fallback_touchscreen)
        {
            if(device_mouse_check_button_pressed(0, mb_left))
            {
                state = 2;
            }
        }
        if(!is_touchscreen)
        {
            if(input_check_pressed(cSTART))
            {
                state = 2;
            }
        }
        break;
    case 2:
        textAlpha -= 0.033;
        if(textAlpha <= 0)
        {
            // Launch the default logo + name crawl intro
            event_user(0);
        }
        break;
}

}
}
else
{
{
if (state != 4)
{
{
if (!skipping)
{
{
/// Start Menu
if(pauseState == 0)
{
    // allow the menu object to handle everything
    if(menu.state == 0 && !instance_exists(objTransition))
    {
        with(menu) menu_fn_open_menu(menu_part_title_items, false, other.menu_is_touchscreen);
    }
    
    with(menu) event_user(0);
}
else
if(pauseState == 3)
{
    // update message based on the current input method
    event_user(2);
    
    if(start && menu.state == 0)
    {
        var do_start = false;
        script_execute(switch_script);
        if(is_fallback_touchscreen)
        {
            do_start = (levelSelect < 6 && device_mouse_check_button_pressed(0, mb_left))
                || (levelSelect >= 6 && level_select_max_presses < 2 && device_mouse_check_button_released(0, mb_left));
            if(do_start)
            {
                menu_is_touchscreen = true;
            }
        }
        if(!is_touchscreen)
        {
            do_start = input_check_pressed(cSTART);
            if(do_start)
            {
                menu_is_touchscreen = false;
            }
        }
        if do_start {
            pauseState=0;
            with objTitlescreenPlane { hsp = 0; image_speed = 0 }
            with objTitleSonic image_speed = 0;
        }
    }
}
// fade in black for menu backer    
if pauseState != 3 {
    if screenAlpha < .75 {
        screenAlpha+=.025;
    }
}
    

/// Skipping to title and Level Select Code
if(menu.state == 0)
{
    // are we restarting?
    with (objProgram) if (check_cheatcode) other.levelSelect = 6; // here `other` is the title control object.
    
    // update interface based on the current input method
    // adds a little overhead, but nothing comparable with the rest of the game :)
    event_user(2);
    if(is_touchscreen)
    {
        // level select touchscreen version - tap on every displayed name, then touch the title screen with two fingers
        if(levelSelect < 6)
        {
            if(device_mouse_check_button_pressed(0, mb_left))
            {
                // the skip button does not count
                var skip_pressed = false;
                if(allow_skipping && name < 9)
                {
                    skip_pressed =  is_skip_button_pressed();      
                }
                if(skip_pressed)
                {
                    // skip to title screen
                    if(skipping == 0)
                    {
                        skipping = 1;
                    }
                }
                else
                {
                    if(name < 12 && (!skip_pressed))
                    {
                        if(levelSelect == 0 && name == 3)
                        {
                            levelSelect = 1;
                        }
                        else
                        {
                            if(levelSelect == 1 && name == 4)
                            {
                                levelSelect = 2;
                            }
                            else
                            {
                                if(levelSelect == 2 && name == 5)
                                {
                                    levelSelect = 3;
                                }
                                else
                                {
                                    if(levelSelect == 3 && name == 6)
                                    {
                                        levelSelect = 4;
                                    }
                                    else
                                    {
                                        if(levelSelect == 4 && name == 7)
                                        {
                                            levelSelect = 5;
                                        }
                                        else
                                        {
                                            if(levelSelect == 5 && name == 8)
                                            {
                                                play_sfx(sndRing,0);
                                                levelSelect = 6;
                                                level_select_max_presses = 0;
                                                with (objProgram) check_cheatcode = true;
                                                show_debug_message("Touchscreen name cheatcode entered!");
                                            }
                                        }                    
                                    }
                                }            
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if (name == 12 && state >= 2)
            {
                // touchscreen version
                if(levelSelect == 6)
                {
                    var levelSelectPresses = 0;
                    if (device_mouse_check_button(0, mb_left))
                    {
                        levelSelectPresses++;
                    }
                    if (device_mouse_check_button(1, mb_left))
                    {
                        levelSelectPresses++;
                    }
                    if (device_mouse_check_button(2, mb_left))
                    {
                        levelSelectPresses++;
                    }
                    if (device_mouse_check_button(3, mb_left))
                    {
                        levelSelectPresses++;
                    }
                    if (device_mouse_check_button(4, mb_left))
                    {
                        levelSelectPresses++;
                    }
                    level_select_max_presses = max(level_select_max_presses, levelSelectPresses);
                    // detect whether we are currently releasing the last "mouse button"
                    var levelSelectReleases = 0;
                    if (device_mouse_check_button_released(0, mb_left))
                    {
                        levelSelectReleases++;
                    }
                    if (device_mouse_check_button_released(1, mb_left))
                    {
                        levelSelectReleases++;
                    }
                    if (device_mouse_check_button_released(2, mb_left))
                    {
                        levelSelectReleases++;
                    }
                    if (device_mouse_check_button_released(3, mb_left))
                    {
                        levelSelectReleases++;
                    }
                    if (device_mouse_check_button_released(4, mb_left))
                    {
                        levelSelectReleases++;
                    }
                    if(level_select_max_presses >= 2 && levelSelectPresses == 0 && levelSelectReleases == 1)
                    {
                        if(!instance_exists(objTransition))
                        {
                            pauseState = 0;
                            objProgram.special_future_current_level = 0;
                            objProgram.special_past_current_level = 0;
                            with(menu) menu_fn_open_menu(menu_part_levelselect_char_items, false, true);
                        }
                    }
                }
            }
        }
    }
    if(!is_touchscreen)
    {
        // button version - left, left, right, right, up, down, a+start
        switch(levelSelect) {
        case 0:
            if input_check_pressed(cLEFT) {
                levelSelect +=1;
            }
        break;
        case 1:
            if input_check_pressed(cLEFT) {
                levelSelect +=1;
            } else if input_check_pressed(cRIGHT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) {
                levelSelect = 0;
            }
        break;
        case 2:
            if input_check_pressed(cRIGHT) {
                levelSelect +=1;
            } else if input_check_pressed(cLEFT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) {
                levelSelect = 0;
            }
        break;
        case 3:
            if input_check_pressed(cRIGHT) {
                levelSelect +=1;
            } else if input_check_pressed(cLEFT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) {
                levelSelect = 0;
            }
        break;
        case 4:
            if input_check_pressed(cUP) {
                levelSelect +=1;
            } else if input_check_pressed(cRIGHT) || input_check_pressed(cLEFT) || input_check_pressed(cDOWN) {
                levelSelect = 0;
            }
        break;
        case 5:
            if input_check_pressed(cDOWN) && pauseState == 3 {
                levelSelect +=1;
                play_sfx(sndRing,0);
                with (objProgram) check_cheatcode = true;
                show_debug_message("LLRRUD cheatcode entered!");
            } else if input_check_pressed(cRIGHT) || input_check_pressed(cUP) || input_check_pressed(cLEFT) {
                levelSelect = 0;
            }
        break;
        case 6:
            if (state >= 2 && name == 12)
            {
                if input_check(cA) && input_check(cSTART) {
                    // allow the menu object to handle everything
                    if(!instance_exists(objTransition))
                    {
                        objProgram.special_future_current_level = 0;
                        objProgram.special_past_current_level = 0;
                        with(menu) menu_fn_open_menu(menu_part_levelselect_char_items, false, false);
                    }
                    
                    with(menu) event_user(0);
                    
                } else if input_check_pressed(cRIGHT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) || input_check_pressed(cB) || input_check_pressed(cC){
                    levelSelect = 0;
                }
            }
        break;
        }
        if(levelSelect == 0)
        {
            if(allow_skipping && name < 9)
            {
                if input_check(cSTART) {
                    // skip to title screen
                    if(skipping == 0)
                    {
                        skipping = 1;
                    }
                }
            }
        }
    }
}

/// alpha control
if(state >= 3) {
    if (name < 3) {
        logoAlpha -= 0.025;
        logoAlpha = clamp(logoAlpha, 0, 4);
    }
}

}
}
else
{
{
/// manage skipping to title

event_user(2);
skipping++;
if(skipping == 30)
{
    // the skipping itself
    name = 12;
    play_effect(bgmTitle, false);
    alarm[0] = -1;
    with(objTitleSonic)
    {
        event_user(0);
    }
}
if(skipping >= 60)
{
    skipping = 0;
}

}
}
}
}
}
}
