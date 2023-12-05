/// @description  Detect gamepads
switch (async_load[?"event_type"]) {
case "gamepad discovered":
    var index = async_load[?"pad_index"];
    show_debug_message("Slot: " + string(index));
    show_debug_message("Model: " + gamepad_get_description(index));
    ds_list_add(padids, index);
    padarray[index] = true;
    
    break;
case "gamepad lost":
    var index = async_load[?"pad_index"];
    var found = false;
    padarray[index] = false;
    
    show_debug_message("Lost pad at slot " + string(pad));
    
    if (pad == index) {
        pad = -1;
        paddesc = "";
    }
    
    var index_to_remove = ds_list_find_index(padids, index);
    if (index_to_remove > -1) {
        ds_list_delete(padids, index_to_remove);
    }
    
    // That disconnected gamepad was the last.
    if (ds_list_empty(padids)) {
        show_debug_message("All gamepads are disconnected!");
        /*
            A hint for those who want to port STT to Switch,
            here you can invoke the joycon applet,
            look at this, all controllers are disconnected, gameplay cannot progress any further,
            by N's regulations you must ask the player to connect at least one controller.
        */
    }
    
    break;
}

/* */
/*  */
