if sprite_exists(screenshot)
{
    draw_sprite_stretched_ext(screenshot, 0, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), objScreen.width, objScreen.height, c_white, fade_alpha);
}
render_titlecard();

