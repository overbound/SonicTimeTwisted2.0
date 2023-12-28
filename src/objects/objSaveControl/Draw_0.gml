if((!hint_up_to_date) || (!surface_exists(hint_surface)))
{
    if(!surface_exists(hint_surface))
    {
        hint_surface = surface_create(512, 512);
    }
    surface_set_target(hint_surface);
    draw_clear_alpha(c_black, 0);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(objResources.fontMicro);
    
    if(hint_top != "")
    {
        draw_set_color(c_black);
        draw_text(objScreen.width div 2 - 1, 14, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2 + 1, 14, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2, 14 - 1, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2, 14 + 1, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2 - 1, 14 - 1, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2 - 1, 14 + 1, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2 + 1, 14 - 1, string_hash_to_newline(hint_top));
        draw_text(objScreen.width div 2 + 1, 14 + 1, string_hash_to_newline(hint_top));
        draw_set_color(c_white);
        draw_text(objScreen.width div 2, 14, string_hash_to_newline(hint_top));
    }
    if(hint_bottom != "")
    {
        draw_set_color(c_black);
        draw_text(objScreen.width div 2 - 1, objScreen.height - 18, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2 + 1, objScreen.height - 18, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2, objScreen.height - 18 - 1, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2, objScreen.height - 18 + 1, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2 - 1, objScreen.height - 18 - 1, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2 - 1, objScreen.height - 18 + 1, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2 + 1, objScreen.height - 18 - 1, string_hash_to_newline(hint_bottom));
        draw_text(objScreen.width div 2 + 1, objScreen.height - 18 + 1, string_hash_to_newline(hint_bottom));
        draw_set_color(c_white);
        draw_text(objScreen.width div 2, objScreen.height - 18, string_hash_to_newline(hint_bottom));
    }
    
    surface_reset_target();
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    hint_up_to_date = true;
}
draw_surface(hint_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
event_user(slot_draw_event);

