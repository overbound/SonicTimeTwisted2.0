/// @description  start closing the door
through = false;
// only use state 1 (animation) if the door is on screen
if (rectangle_in_rectangle(bbox_left, draw_bbox_top, bbox_right, bbox_bottom, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + objScreen.width, camera_get_view_y(view_camera[0]) + objScreen.height) > 0)
{
    close_timer = bbox_bottom - draw_bbox_top;
    state = 1;
} else {
    close_timer = 0;
    state = 2;
}

