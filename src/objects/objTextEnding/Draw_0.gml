draw_set_font(objResources.fontHud);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
switch state {
    case 1:
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+120, string_hash_to_newline(tr("_bad_ending_text")));
    break;
    case 2:
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+48, string_hash_to_newline(tr("_good_ending_text")));
    break;
}
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


