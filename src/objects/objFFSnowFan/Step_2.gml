var __b__;
__b__ = action_if_variable(enabled, true, 0);
if __b__
{
/// Emit Snow
ticks = (ticks + 1) mod interval;
if (ticks > 0) exit;
if room == FF1_p || room == FF2_p {
    if not audio_is_playing(sndFireBlow)
    {
        play_sfx(sndFireBlow, 4);
    }
}
var x_origin = x + x_offset + random(x_range) - (1 / 2) * x_range;
var y_origin = y + y_offset + random(y_range) - (1 / 2) * y_range;
var angle = angle_offset + random(angle_range) - (1 / 2) * angle_range;
part_type_speed(objResources.ff_snow, velocity, velocity, 0, 0);
part_type_direction(objResources.ff_snow, angle + 180, angle + 180, 0, 0);
part_particles_create(objLevel.particles, x_origin, y_origin, objResources.ff_snow, 1);

}
