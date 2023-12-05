/// @description  Fill screen with white on the GUI layer.
if (mode == 1)
{
    draw_set_alpha(image_alpha);
    draw_rectangle_color(margin_h, margin_v, objScreen.width + margin_h, objScreen.height + margin_v, image_blend, image_blend, image_blend, image_blend, false);
    draw_set_alpha(1);
}
else
{
    event_inherited();
}

