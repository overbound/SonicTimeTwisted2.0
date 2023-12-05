if (state == 1)
{
    close_timer -= 2;
    if (close_timer <= 0)
    {
        state = 2;
    }
    // only play the sound and animation if the door is within view: otherwise it gives away the fact that, if a door is 
    // deactivated for being far away, it can start closing later than it should
    if (rectangle_in_rectangle(bbox_left, draw_bbox_top, bbox_right, bbox_bottom, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) > 0)
    {
        if not audio_is_playing(sndVVDoor)
        {
            play_sfx(sndVVDoor, 4);
        }
    } else {
        close_timer = 0;
        state = 2;
    }
}

