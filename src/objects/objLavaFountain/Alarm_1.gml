/// @description  Spawn stream
lavaId = instance_create(x-32, y, objLavaStream)
with lavaId
{
    length = other.length;
    max_distance = other.max_distance;
    fall_speed = other.fall_speed;
}

alarm_set(2, (length div fall_speed)+6);
