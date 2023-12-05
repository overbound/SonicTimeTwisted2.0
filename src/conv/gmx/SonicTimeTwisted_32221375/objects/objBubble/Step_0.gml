/// @description  Stay in water only
if not collision_ray(sprite_width/2, 0, 0, objWater) instance_destroy();

hspeed = sine[offset]*0.25;
offset = (offset + 3) mod 360;
