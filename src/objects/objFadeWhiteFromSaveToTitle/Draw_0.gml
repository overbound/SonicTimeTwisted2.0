/// @description  Fill screen with white
draw_set_alpha(image_alpha);
draw_rectangle_color(camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]), camera_get_view_x(view_camera[view_current])+objScreen.width, camera_get_view_y(view_camera[view_current])+objScreen.height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

