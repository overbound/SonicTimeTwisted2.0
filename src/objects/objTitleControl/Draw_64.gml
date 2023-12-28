if(state >= 2)
{
    with(menu) event_user(3);
}
if(state >= 2)
{
    if(allow_skipping)
    {
        if(name < 9 && is_touchscreen)
        {
           draw_sprite(sprTouchscreenFastForward, 0, objScreen.width - 28, 4);
        }
    }
}

