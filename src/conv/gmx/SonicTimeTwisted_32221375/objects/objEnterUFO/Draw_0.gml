/// @description  Fill screen with black
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current ), false);
draw_set_color(c_white);
draw_set_alpha(1);

