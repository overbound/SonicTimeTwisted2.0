is_in_view = rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ) - 80, __view_get( e__VW.YView, 0 ) - 80, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 80, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 80) > 0;
timeline_running = is_in_view;
if(!is_in_view)
{
    hspeed = 0;
}

