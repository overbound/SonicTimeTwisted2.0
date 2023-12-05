/// @description Draw the sprite + text.

draw_self();
draw_set_font(objResources.fontHud);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_colour(x, y - 10, string_hash_to_newline(tr("_save_delete")), c_red, c_red, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

