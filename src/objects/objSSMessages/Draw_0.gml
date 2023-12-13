/// @description  Game Play Messages
if objScreen.paused exit;
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);
// score / time / rings string
draw_set_font(objResources.fontHud);
draw_set_color(c_white);
draw_set_halign(fa_center);
if closeMenu == false {
    if(alarm[1]== -1)
    {
        if (objSSPlayer.kill > 0)
        {
            var menu = objSSHud.menu;
            // allow the menu object to handle everything
            if(menu.state == 0)
            {
                var menu_to_use = menu_part_sstage_offtrack_items;
                if(objSSPlayer.kill == 1)
                {
                    menu_to_use = menu_part_sstage_norings_items;
                }
                else
                if(objSSPlayer.kill == 4)
                {
                    menu_to_use = menu_part_sstage_defeat_items;
                }
                set_smartphone_controls_enabled(false);
                set_analog_controls_enabled(false, false);
                with(menu) menu_fn_open_menu(menu_to_use, true, other.is_touchscreen);
            }
        }
    }
}

/// Opening
if opening {
    d3d_set_projection_ortho(0, 0, objScreen.width, objScreen.height, 0);
    // title first word
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_font(objResources.fontTitleLarge);
    draw_text((objScreen.width / 2),64,string_hash_to_newline(tr("_ss_intro_Race")));
    // title second word
    draw_set_color(blue);
    draw_text((objScreen.width / 2),98,string_hash_to_newline(tr("_ss_intro_Metal_Sonic")));
    draw_set_color(c_yellow);
    draw_set_halign(fa_left);
    if (show_go_separately)
    {
        if (title_word == 4)
        {
            draw_text(titre_string_pos[3], 132, string_hash_to_newline(title_string[3]));
        }
        else
        {
            for (var i=0; i<3; i+=1)
            {
                if title_word>i draw_text(titre_string_pos[i], 132, string_hash_to_newline(title_string[i]));
            }
        }
    }
    else
    {
        for (var i=0; i<4; i+=1)
        {
            if title_word>i draw_text(titre_string_pos[i], 132, string_hash_to_newline(title_string[i]));
        }
    }
}
draw_set_color(c_white);


