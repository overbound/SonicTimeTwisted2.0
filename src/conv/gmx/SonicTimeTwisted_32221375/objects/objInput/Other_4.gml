/// @description  Create input stream
reinit_input_method();
stream = ds_list_create();

/// Rerun input init script: necessary for smartphone, transparent for PC
script_execute(input_init_script);

/// Enable fallback controls unconditionally on certain maps: title screen, save screen
switch(room)
{
    case titlescreen:
    case saveSelect:
        use_fallback = true;
        break;
    default:
        use_fallback = false;
}

/// Enable/disable analog controls
refresh_analog_controls_enabled();

