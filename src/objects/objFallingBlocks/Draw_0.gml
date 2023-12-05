for (var j=y; j<y+sprite_height; j+=64)
{
    for (var i=x-((64) mod 64); i<x+sprite_width; i+=64)
    {
        draw_sprite_part(sprite_index, image_index, max(x-i, 0), 0, clamp(i-x, 64, x+sprite_width-i), min(y+sprite_height-j, 64), max(i, x), j);
    }
}

