/// @description  parallax_create(tiled, back, left, top, width, height, hspeed, vspeed, relative_x, relative_y, absolute_x, absolute_y, separation_x, separation_y);
/// @param tiled
/// @param  back
/// @param  left
/// @param  top
/// @param  width
/// @param  height
/// @param  hspeed
/// @param  vspeed
/// @param  relative_x
/// @param  relative_y
/// @param  absolute_x
/// @param  absolute_y
/// @param  separation_x
/// @param  separation_y
function parallax_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13) {
	with instance_create(0, 0, objParallax)
	{
	    // general
	    tiled = argument0;
	    // background elements
	    back = argument1;
	    left = argument2;
	    top = argument3;
	    width = argument4;
	    height = argument5;
   
	    // speed
	    hspeed = argument6;
	    vspeed = argument7;
 
	    // offsets
	    relative_x = argument8;
	    relative_y = argument9;
	    absolute_x = argument10;
	    absolute_y = argument11;
	    separation_x = argument12;
	    separation_y = argument13;
	    // done
	    return id;
	}



}
