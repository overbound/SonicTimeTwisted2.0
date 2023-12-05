/// @description  parallax_create_sprite(tiled, sprite, imgspeed, hspeed, vspeed, relative_x, relative_y, absolute_x, absolute_y, separation_x, separation_y);
/// @param tiled
/// @param  sprite
/// @param  imgspeed
/// @param  hspeed
/// @param  vspeed
/// @param  relative_x
/// @param  relative_y
/// @param  absolute_x
/// @param  absolute_y
/// @param  separation_x
/// @param  separation_y
with instance_create(0, 0, objParallax)
{
    // general
    tiled = argument0;
    // background elements
    sprite_index = argument1;
    image_speed = argument2;
    // speed
    hspeed = argument3;
    vspeed = argument4;
 
    // offsets
    relative_x = argument5;
    relative_y = argument6;
    absolute_x = argument7;
    absolute_y = argument8;
    separation_x = argument9;
    separation_y = argument10;
    // done
    return id;
}
