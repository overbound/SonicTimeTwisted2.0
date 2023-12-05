/// @description  Draw "GAME OVER"
draw_set_font(objResources.fontTitleSmallest);
// draw the first word
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text_color(__view_get( e__VW.XView, view_current )+x_center-8-max(alarm[0]*16, 0), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )/2, string_hash_to_newline(word1), c_ltgray, c_ltgray, c_white, c_white, 1);
// draw the second row
draw_set_halign(fa_left);
draw_text_color(__view_get( e__VW.XView, view_current )+x_center+8+max(alarm[0]*16, 0), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )/2, string_hash_to_newline(word2), c_ltgray, c_ltgray, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(objResources.fontHud);
// fill screen with black
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current ), false);
draw_set_color(c_white);
draw_set_alpha(1);

