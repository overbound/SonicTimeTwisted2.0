/// @description  Draw "GAME OVER"
draw_set_font(objResources.fontTitleSmallest);
// draw the first word
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text_color(camera_get_view_x(view_camera[view_current])+x_center-8-max(alarm[0]*16, 0), camera_get_view_y(view_camera[view_current])+objScreen.height/2, string_hash_to_newline(word1), c_ltgray, c_ltgray, c_white, c_white, 1);
// draw the second row
draw_set_halign(fa_left);
draw_text_color(camera_get_view_x(view_camera[view_current])+x_center+8+max(alarm[0]*16, 0), camera_get_view_y(view_camera[view_current])+objScreen.height/2, string_hash_to_newline(word2), c_ltgray, c_ltgray, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(objResources.fontHud);
// fill screen with black
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), camera_get_view_x(view_camera[view_current])+objScreen.width, camera_get_view_y(view_camera[view_current])+objScreen.height, false);
draw_set_color(c_white);
draw_set_alpha(1);

