/// @description  Draw After-Images and self.
if (xprevious != x || yprevious != y)
{
    var xdir = sign(x - xprevious);
    var ydir = sign(y - yprevious);
    if (x3StepsBack != x2StepsBack || y3StepsBack != y2StepsBack)
    {
        d3d_set_fog(1, afterImageBlend3, 0, 0);
        draw_sprite_ext(sprite_index, image_index, x3StepsBack + xdir * 3, y3StepsBack - ydir * 3, image_xscale, image_yscale, 0, c_white, afterImageAlpha);
        d3d_set_fog(0, c_white, 0, 0);
    }
    if (xprevious != x2StepsBack || yprevious != y2StepsBack)
    {
        d3d_set_fog(1, afterImageBlend2, 0, 0);
        draw_sprite_ext(sprite_index, image_index, x2StepsBack + xdir * 3, y2StepsBack - ydir * 3, image_xscale, image_yscale, 0, c_white, afterImageAlpha);
        d3d_set_fog(0, c_white, 0, 0);
    }
    d3d_set_fog(1, afterImageBlend1, 0, 0);
    draw_sprite_ext(sprite_index, image_index, xprevious + xdir * 3, yprevious - ydir * 3, image_xscale, image_yscale, 0, c_white, afterImageAlpha);
    d3d_set_fog(0, c_white, 0, 0);
}

draw_self();

