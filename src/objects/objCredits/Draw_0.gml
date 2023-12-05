if(!rolled)
{
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_center);
    draw_set_font(objResources.fontHud);
    
    var y_offset = __view_get( e__VW.YView, view_current ) - 18 + (18 * alarm[0] / alarm_delay);
    for(var i = 0; i < 7; i++)
    {
        var text_alpha = 1;
        if(i == 6)
        {
            text_alpha = (alarm_delay - alarm[0]) / alarm_delay;
        }
        if(displayed_label_is_title[i])
        {
            draw_set_font(objResources.fontHud);
            draw_text_colour(round(__view_get( e__VW.XView, view_current ) + center_offset), round(y_offset + i*18), string_hash_to_newline(displayed_label[i]),c_white,c_white,c_yellow,c_yellow,text_alpha);
        }
        else
        {
            draw_set_font(objResources.fontHudMin);
            draw_text_colour(round(__view_get( e__VW.XView, view_current ) + center_offset), round(y_offset + i*18), string_hash_to_newline(displayed_label[i]),c_white,c_white,c_gray,c_gray,text_alpha);
        }
    }
}

