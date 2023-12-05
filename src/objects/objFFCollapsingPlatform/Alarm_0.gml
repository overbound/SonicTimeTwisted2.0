/// @description  Generate pieces
var i;
// sound
play_sfx_at(sndCollapse, x+sprite_width*0.5, y+sprite_height*0.5, 0, 100, 300, 1, false, 0);
// get bounds
var width = sprite_width div 16;
var height = sprite_height div 16;
// choose sprite parts
if image_index == 0 {
     
    sprite_parts=sprFFCollapsingPartsLeft;
} else if image_index == 1 {
    sprite_parts=sprFFCollapsingPartsRight; 
} else if image_index == 2 {
    sprite_parts=sprFFFCollapsingPartsLeft;
} else if image_index == 3 {
    sprite_parts=sprFFFCollapsingPartsRight;
}
show_debug_message(sprite_get_name(sprite_parts));
// go through rows
for (var j=0; j<height; j+=1)
{
    // go through collumns
    for (i=0; i<width; i+=1)
    {
        // create block
        with instance_create(x+i*16, y+j*16, objFFCollapsingPlatformPiece)
        {
            // setup sprite
            sprite_index = other.sprite_parts;
            image_index = j*width+i;
            // set delay on drop
            if image_xscale>0 alarm[0] = ((width-i)*other.ox)+(((height-j)-1)*other.oy); else
            if image_xscale<0 alarm[0] = (i*other.ox)+(((height-j)-1)*other.oy);
        }
    }
}

instance_destroy();
