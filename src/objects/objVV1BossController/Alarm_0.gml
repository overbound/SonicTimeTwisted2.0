/// @description  Start boss
// start moving
move_platforms = true;
set_boss_music(room);
play_boss_intro(objMusic.bossIntroAsset, 0);
// add boss
instance_create(0, 0, objVV1Boss);

