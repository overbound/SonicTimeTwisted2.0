if sprite_exists(screenshot)
{
    //gpu_set_blendenable(false);
    draw_sprite_stretched_ext(screenshot, 0, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), objScreen.width, objScreen.height, c_white, image_alpha);
    //gpu_set_blendenable(true);
}

