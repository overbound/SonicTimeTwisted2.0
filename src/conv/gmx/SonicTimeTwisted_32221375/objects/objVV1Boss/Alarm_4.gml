/// @description  move off screen and add explosion
explosion = instance_create(x, y, objExplosionGroupNoSound);
play_sfx(sndBombExplosion,1);
direction = 64;
speed = 6;
gravity = 0.24;

