/// @description  Launch bombs
with instance_create(x+24, y, objVVBomb) direction = 355;
with instance_create(x-24, y, objVVBomb) direction = 185;
// sound
play_sfx(sndBombLaunch, 4);

alarm_set(2, 115);
