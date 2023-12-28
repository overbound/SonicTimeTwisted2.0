/// @description  Fill screen with white
draw_set_color(c_white);
//draw_set_alpha(image_alpha);
draw_set_alpha(image_alpha);
draw_rectangle(camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), camera_get_view_x(view_camera[view_current])+objScreen.width, camera_get_view_y(view_camera[view_current])+objScreen.height, false);
draw_set_color(c_white);
draw_set_alpha(1);

