/// @description  Spawn pattern 4
with (instance_create(x, y-5, objBubble))
{
    image_index = 1;
    size = 3+other.count;
    offset = choose(0, 180);
    vspeed= -1;
}
// continue spawning
count -= 1;
if count alarm[3] = 16;

