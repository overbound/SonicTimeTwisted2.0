ticks = (ticks + 1) mod interval;
if (ticks > 0) exit;
if not audio_is_playing(sndFireBlow)
{
    play_sfx(sndFireBlow, 4);
}
var x_origin = x + x_offset + random(x_range) - (1 / 2) * x_range;
var y_origin = y + y_offset + random(y_range) - (1 / 2) * y_range;
var angle = angle_offset + random(angle_range) - (1 / 2) * angle_range;
instance_create(x_origin, y_origin, objDDLeaf);

