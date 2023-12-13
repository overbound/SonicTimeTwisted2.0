draw_set_font(objResources.fontHud);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
switch state {
    case 1:
        draw_text(camera_get_view_x(view_camera[view_current])+(objScreen.width / 2), camera_get_view_y(view_camera[view_current])+(objScreen.height / 2), string_hash_to_newline(tr("_bad_ending_text")));
    break;
    case 2:
        draw_text(camera_get_view_x(view_camera[view_current])+(objScreen.width / 2), camera_get_view_y(view_camera[view_current])+((objScreen.height / 2) - ((objScreen.height / 2) - 48)), string_hash_to_newline(tr("_good_ending_text")));
    break;
}
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


