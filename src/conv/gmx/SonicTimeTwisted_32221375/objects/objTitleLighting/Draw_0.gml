/// @description  Check Surface Exists
if (!surface_exists(tt_surface) && __view_get( e__VW.YView, 0 ) < room_height - __view_get( e__VW.HView, 0 ) - 64)
{
    tt_surface = surface_create(426, 240);
}
if (__view_get( e__VW.YView, 0 ) >= room_height - __view_get( e__VW.HView, 0 ) - 64)
{
    instance_destroy();
    exit;
}

///Draw the lightning to the surface.
// set the drawing target to the surface
var temp_Detail = 30;
var temp_Centre = 213;
var temp_Offset = 25;
var temp_Sign   = 1;
var temp_Height = 0;
var temp_Wave_1 = 0; // standard wave
var temp_Wave_2 = 0; // spikes
var temp_Wave_3 = 0; // larger wave
    if (__view_get( e__VW.YView, 0 ) < room_height - __view_get( e__VW.HView, 0 ) - 64)
    {
surface_set_target(tt_surface);
    draw_clear_alpha(c_black, 0);
    draw_primitive_begin(pr_trianglefan); // pr_trianglefan // pr_linestrip
    draw_vertex_colour(213, 120, c_white, 1);
        for (var j = 0; j < 2; j++)
        {
            for (var i = 0; i < temp_Detail; i++)
            {
                if (!j)
                {
                    temp_Wave_1 = sin(degtorad(time / 8 + (i) + (__view_get( e__VW.YView, 0 ) / 80) * temp_Sign) * 16 + (__view_get( e__VW.YView, 0 ) / 40) * temp_Sign) * (10 / (max(1, __view_get( e__VW.YView, 0 ) / 240) * temp_Sign));
                }
                else
                {
                    temp_Wave_1 = cos(degtorad(time / 8 - (i) - (__view_get( e__VW.YView, 0 ) / 80) * temp_Sign) * 16 - (__view_get( e__VW.YView, 0 ) / 40) * temp_Sign) * (10 / (max(1, __view_get( e__VW.YView, 0 ) / 240) * temp_Sign));
                }
                // temp_Wave_1 = sin(degtorad(time / 8 + i + (view_yview / 60) * temp_Sign) * 16) * 10;
                draw_vertex_colour(temp_Centre + ((temp_Offset / max(1, __view_get( e__VW.YView, 0 ) / 240)) * temp_Sign) + (temp_Wave_1 * temp_Sign) + (temp_Wave_2 * temp_Sign), temp_Height, c_white, 1);
                temp_Height += (240 / temp_Detail) * temp_Sign;
            }
            if (!j)
            {
                temp_Wave_1 = sin(degtorad(time / 8 + i + (__view_get( e__VW.YView, 0 ) / 80) * temp_Sign) * 16 + (__view_get( e__VW.YView, 0 ) / 40) * temp_Sign) * (10 / (max(1, __view_get( e__VW.YView, 0 ) / 240) * temp_Sign));
            }
            else
            {
                temp_Wave_1 = cos(degtorad(time / 8 - (i) - (__view_get( e__VW.YView, 0 ) / 80) * temp_Sign) * 16 - (__view_get( e__VW.YView, 0 ) / 40) * temp_Sign) * (10 / (max(1, __view_get( e__VW.YView, 0 ) / 240) * temp_Sign));
            }
            draw_vertex_colour(temp_Centre + ((temp_Offset / max(1, __view_get( e__VW.YView, 0 ) / 240)) * temp_Sign) + (temp_Wave_1 * temp_Sign) + (temp_Wave_2 * temp_Sign) + (temp_Wave_3 * temp_Sign), temp_Height, c_white, 1);
            temp_Sign *= -1;
        }
        temp_Sign = 1;
        temp_Height = 0;
        temp_Wave_1 = sin(degtorad(time / 8 + (__view_get( e__VW.YView, 0 ) / 80) * temp_Sign) * 16 + (__view_get( e__VW.YView, 0 ) / 40) * temp_Sign) * (10 / (max(1, __view_get( e__VW.YView, 0 ) / 240) * temp_Sign));
        draw_vertex_colour(temp_Centre + ((temp_Offset / max(1, __view_get( e__VW.YView, 0 ) / 240)) * temp_Sign) + (temp_Wave_1 * temp_Sign) + (temp_Wave_2 * temp_Sign) + (temp_Wave_3 * temp_Sign), temp_Height, c_white, 1);
    draw_primitive_end();
    /*temp_Sign = 1;
    temp_Height = 0;
    temp_Wave_1 = 0;
    for (var j = 0; j < 2; j++)
    {
        for (var i = 0; i < temp_Detail; i++)
        {
            temp_Wave_1 = sin(degtorad(time / 8 + i) * 16) * 10;
            draw_point_colour(clamp(temp_Centre + (temp_Offset * temp_Sign) + (temp_Wave_1 * temp_Sign), 0, 425), clamp(temp_Height, 0, 239), c_black);
            temp_Height += (240 / temp_Detail) * temp_Sign;
        }
        temp_Wave_1 = sin(degtorad(time / 8 + i) * 16) * 10;
        draw_point_colour(clamp(temp_Centre + (temp_Offset * temp_Sign) + (temp_Wave_1 * temp_Sign), 0, 425), clamp(temp_Height, 0, 239), c_black);
        temp_Sign = -1;
    }*/
surface_reset_target();
    }
// draw the sprite mirrored on the y axis to create the zipper shape
//draw_sprite_ext(spr, floor(image_index), xoffset, 0, 1, 1, 0, c_white, 1);
//draw_sprite_ext(spr, floor(image_index), 0, 1, 1, 1, 0, c_white, 1); // ORIGINAL IMAGE
// reset the drawing target to the screen

/* */
///Draw the surface.
// draw a dummy background for the effect to cover
//draw_background_ext(zonebkg, 0, 0, 2, 2, 0, c_white, 1);
// turn on the time travel effect shader
if (__view_get( e__VW.YView, 0 ) < room_height - __view_get( e__VW.HView, 0 ) - 64)
{
    timetravel_shader_draw(sprite_width, sprite_height, 0, __view_get( e__VW.YView, 0 ));
}

/* */
/*  */
