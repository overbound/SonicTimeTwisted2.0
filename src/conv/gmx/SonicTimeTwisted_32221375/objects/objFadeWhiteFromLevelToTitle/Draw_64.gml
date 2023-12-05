/// @description  Fill screen with white on the GUI layer.
draw_set_alpha(image_alpha);
draw_rectangle_color(0, 0, objScreen.width, objScreen.height, image_blend, image_blend, image_blend, image_blend, false);
draw_set_alpha(1);

