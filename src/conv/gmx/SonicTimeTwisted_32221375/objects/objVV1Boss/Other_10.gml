/// @description  Boss defeated
// stop moving
path_end();
// animate
sprite_index = sprMetalFall;
image_index = 0;
image_speed = 0.5;
image_xscale = 1;
// fall
state = -1;
remove = 2;
// particles
with objVV1BossShield instance_destroy();
explosion = instance_create(x, y, objExplosionGroupNoSound);
play_sfx(sndBombExplosion,1);
// end fight
alarm[1] = -1;
alarm[2] = -1;
alarm[3] = -1;
alarm[4] = 30;
alarm[5] = 15;

