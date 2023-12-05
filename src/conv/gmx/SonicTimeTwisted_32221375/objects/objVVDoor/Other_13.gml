/// @description  start closing the door
through = false;
// only use state 1 (animation) if the door is on screen
if (rectangle_in_rectangle(bbox_left, draw_bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) > 0)
{
    close_timer = bbox_bottom - draw_bbox_top;
    state = 1;
} else {
    close_timer = 0;
    state = 2;
}

