/// @description  Reverse direction if flipped
show_debug_message("image_xscale: "+string(image_xscale));
if (image_xscale == -1)
{
    x -= 128;
    image_xscale = 1;
    if objProgram.in_past == true {
        sprite_parts = sprFFCollapsingPartsRight;
        image_index = 1;
    }
    else {
        sprite_parts = sprFFFCollapsingPartsRight;
        image_index = 3;
    }
}


