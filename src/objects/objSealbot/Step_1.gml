is_in_view = rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, camera_get_view_x(view_camera[0]) - 80, camera_get_view_y(view_camera[0]) - 80, camera_get_view_x(view_camera[0]) + objScreen.width + 80, camera_get_view_y(view_camera[0]) + objScreen.height + 80) > 0;
timeline_running = is_in_view;
if(!is_in_view)
{
    hspeed = 0;
}

