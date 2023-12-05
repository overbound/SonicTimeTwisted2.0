draw_background_ext(bg, bg_x, bg_y, 2, 1, 0, c_white, 0.2);
if(objProgram.saveSlot > -2) // emeralds only appear in regular gameplay mode
{
    for(var i = 0; i < level; i++)
    {
        draw_sprite_ext(em_sprite, i, em_x + i*34, em_y, 0.7, 0.7, 0, c_white, 1);
    }
    for(var i = 0; i < other_level; i++)
    {
        draw_sprite_ext(other_em_sprite, i, oem_x + i*16, oem_y, 0.35, 0.35, 0, c_white, 1);
    }
}
else
{
    if(menu.state > 0) // putting this condition first because of how GML works
    {
        with(menu)
        {
            event_user(3);
        }
    }
}

