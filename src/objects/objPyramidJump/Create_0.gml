alarm[0]=300;
image_speed = 0;
if objGameData.character_id[0] == 1 {
    sprite_index = sprPyramidJump;
} else if objGameData.character_id[0] == 2 {
    sprite_index = sprTailsPyramidJump;
} else {
    sprite_index = sprKnucklesPyramidJump;
}

