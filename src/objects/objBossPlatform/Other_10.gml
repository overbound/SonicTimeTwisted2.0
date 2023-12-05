/// @description  Generate debris
var debrisWidth = 16;
var debrisHeight = 16;

var columns = sprite_width div debrisWidth;
var rows = sprite_height div debrisHeight;

var i;
for (var j = 0; j < rows; ++j)
{
    for (i = 0; i < columns; ++i)
    {
        with (instance_create(x + i * debrisWidth, y + j * debrisHeight, objBreakableRockBits))
        {
            sprite_index = sprGalanikPlatformBroken;
            image_index = j * columns + i;
            if (image_xscale > 0)
            {
                alarm[0] = ((columns - i) * 2) + (((rows - j) - 1) * 5);
            }
            else if (image_xscale < 0)
            {
                alarm[0] = (i * 2) + (((rows - j) - 1) * 5);
            }
        }
    }
}

play_sfx_at(sndCollapse, x + sprite_width * 0.5, y + sprite_height * 0.5, 0, 100, 300, 1, false, 0);

instance_destroy();


