/// @description  Spawn pattern 3
with instance_create(x, y-5, objBubble)
{
    if (other.count==3) size = 5; else size = choose(1, 2);
    offset = choose(0, 180);
    vspeed= -1;
}
// continue spawning
count -= 1;
if count alarm[2] = 16;

