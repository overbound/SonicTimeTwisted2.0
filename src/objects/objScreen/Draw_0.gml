/// @description  Screenshot and scanlines
if sprite_exists(screenshot) && !instance_exists(objSSHud)
{
    gpu_set_blendenable(false);
    draw_sprite_stretched_ext(screenshot, 0, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), width, height, c_white, 1);
    gpu_set_blendenable(true);
}
else if scanlines
{
    // draw the screenshot with a scanline shader?
}

