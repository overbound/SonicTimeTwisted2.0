/// @description  Initialize
event_inherited();
image_speed = 0.04167;
image_alpha = 0;
mode = 1;
objLevel.cleared = true;
alarm[0] = 27;
play_sfx(bgmGameOver, 0);

word1 = tr("_GAMEOVER_WORD1");
word2 = tr("_GAMEOVER_WORD2");
x_center = __view_get( e__VW.WView, view_current )/2 + 8 * (string_length(word1) - string_length(word2));


