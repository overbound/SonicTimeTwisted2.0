/// @description  Generate pieces
var i;
// sound
if !audio_is_playing(sndCollapse)
    play_sfx(sndCollapse, 1);
// get bounds
var width = sprite_width div 16;
var height = sprite_height div 16;
// choose sprite parts
if image_index == 0 {
     
    sprite_parts=sprRRBreakableColumnPiece;
} else if image_index == 1 {
    sprite_parts=sprRRBreakableColumnPiece; 
} else if image_index == 2 {
    sprite_parts=sprRRBreakableColumnPiece;
} else if image_index == 3 {
    sprite_parts=sprRRBreakableColumnPiece;
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

action_kill_object();
