/// @description  When back to the title screen, "skip" to where the title screen is displayed
with(objTitleControl)
{
    name = 12;
    play_effect(bgmTitle, false);
    alarm[0] = -1;
    with(objTitleSonic)
    {
        event_user(0);
    }
}

