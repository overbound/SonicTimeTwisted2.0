/// @description  Fill screen with white
draw_set_alpha(image_alpha);
draw_rectangle_color(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current ), c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

