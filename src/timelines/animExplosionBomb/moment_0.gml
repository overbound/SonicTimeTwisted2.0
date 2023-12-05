/// @description  Create explosion
with instance_create(x-2, y+5, objVVBombExplosion) depth = other.depth-1;
// sound
//stop_sound(sndBombExplosion);
play_sfx(sndBombExplosion, 2);

