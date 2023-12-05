if(duration mod 2)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(objResources.fontHud);
    if (in3d)
    {
        d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);
        draw_text_colour(
            __view_get( e__VW.WView, view_current ) div 2,
            __view_get( e__VW.HView, view_current ) div 2,
            string_hash_to_newline(hint), c_ltgray, c_ltgray, c_white, c_white, 1
        );
    }
    else
    {
        draw_text_colour(
            __view_get( e__VW.XView, view_current ) + (__view_get( e__VW.WView, view_current ) div 2),
            __view_get( e__VW.YView, view_current ) +( __view_get( e__VW.HView, view_current ) div 2),
            string_hash_to_newline(hint), c_ltgray, c_ltgray, c_white, c_white, 1
        );
    }
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

