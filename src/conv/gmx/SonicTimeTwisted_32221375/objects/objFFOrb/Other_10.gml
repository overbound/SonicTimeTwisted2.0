/// @description  Initialization - can be called again if flashing is toggled in the menu
if(objScreen.flashing_reduced)
{
    init_ffz_orb_flashing();
    step_event = 1;
    draw_script = draw_ffz_orb_reduced_flashing;
    image_speed = 0.5;
}
else
{
    step_event = 2;
    draw_script = draw_ffz_orb_default;
    image_speed = 1;
}

