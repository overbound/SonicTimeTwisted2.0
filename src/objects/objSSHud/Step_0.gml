/// @description  flash for key mapper
if inputFlash < 1
    inputFlash += .25;
    else inputFlash = 0;

/// fade white for pause
if objProgram.paused {
    if white < 0.5
        white+=.125;
    else white = 0.5;
} else if white > 0 {
    white-=.125;
}

/// Pause Menu
if objProgram.paused {
    // if there's already a menu being displayed (failure screen) - don't pause
    // otherwise it locks the game
    if(menu.state != 0 && menu.action_script == menu_part_sstage_loss_actions)
    {
        objProgram.paused = false;
        game_pause(objProgram.paused);
    }
    // allow the menu object to handle everything
    if(menu.state == 0)
    {
        with(menu) menu_fn_open_menu(menu_part_zone_items, true, other.is_touchscreen);
    }  
}
if(menu.state != 0)
{
    with(menu) event_user(0);
}
    

