image_speed = 0;
if objGameData.character_id[0] == 1 {
    sprite_index = sprPyramidRotate;
} else if objGameData.character_id[0] == 2 {
    sprite_index = sprTailsPyramidRotate;
} else {
    sprite_index = sprKnucklesPyramidRotate;
}

