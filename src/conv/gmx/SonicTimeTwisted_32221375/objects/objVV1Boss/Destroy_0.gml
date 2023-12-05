/// @description  Finish up
// destroy shield, damn it!
with objVV1BossShield instance_destroy();
// remove controller
with objVV1BossController instance_destroy();
// reset camera
with objCamera right = room_width;
stop_all_music(false);

