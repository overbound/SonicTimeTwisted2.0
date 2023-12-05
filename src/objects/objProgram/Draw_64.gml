/// @description draw save progress (if on consoles)
/// @param if on consoles

if (objProgram.device_info & DEVICE_OS_PLAYSTATION)
{
    if (async_busy/* || true*/)
    {
        draw_set_font(objResources.fontHud);
        draw_set_halign(fa_right);
        draw_set_valign(fa_bottom);
        
        var _margin = 16; // always leave a margin for weird TVs.
        var _string = tr("_PS_SAVING"); // ...DO NOT POWER OFF!
        if (async_loading) _string = tr("_PS_LOADING");
        
        draw_text_colour(
            display_get_gui_width() - _margin,
            display_get_gui_height() - _margin,
            string_hash_to_newline(_string),
            c_red,
            c_red,
            c_white,
            c_white,
            1);
            
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}

/* */
/*  */
