/// @description  Pause Menu
if objProgram.paused {
    // allow the menu object to handle everything
    if(menu.state == 0)
    {
        with(menu) menu_fn_open_menu(menu_part_zone_items, false, other.is_touchscreen);
    }
    with(menu) event_user(0);
}

/// fade black for pause
if objProgram.paused {
    if darkbg < 0.5
        darkbg+=.125;
    else darkbg = 0.5;
} else if darkbg > 0 {
    darkbg-=.125;
}

