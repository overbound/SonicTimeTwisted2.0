/// @description  Create explosion
with instance_create(x, y-20, objVVBombExplosion) depth = other.depth-1;

action_kill_object();
