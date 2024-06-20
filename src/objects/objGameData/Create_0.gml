/// @description  Initialize game data
image_speed = 0;
/* AUTHOR NOTE: save data and global game values (eg. chaos emeralds) go here! */
timeout = true;
// characters
character_id[0] = -1;
character_id[1] = 0;

// gameplay values
player_lives[0] = 3;
player_lives[1] = 3;
player_score[0] = 0;
player_score[1] = 0;
rings[0] = 0;
rings[1] = 0;
player_coins[0] = 0;
player_coins[1] = 0;
scoreLiveCounter = 1;

// global game settings
livesMode = LIVES_CLASSIC; // this should be *by default* set to "LIVES_CLASSIC", only set it to "LIVES_ORIGINS" for testing

/* */
/*  */
