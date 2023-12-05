objProgram.inputManager.flag_player_input = argument0;

if(debug_mode) {
    if(argument0) {
        show_debug_message("Controls ENABLED");
    }
    else {
        show_debug_message("Controls DISABLED");
    }
}

// if touchscreen controls are active - do not enable them in menu
if(instance_exists(objMenu))
{
    if(objMenu.state == 0)
    {
        set_smartphone_controls_enabled(argument0);
    }
    else
    {
        set_smartphone_controls_enabled(false);
    }
}
else
{
    set_smartphone_controls_enabled(argument0);
}
