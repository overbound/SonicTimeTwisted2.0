if image_index > 10 {
    if objGameData.character_id[0] == 1 {
        image_index = 11;
    } else if objGameData.character_id[0] == 2 {
        image_index = 12;
    } else {
        image_index = 13;
    }
}
tex = sprite_get_texture(sprite_index, image_index);

