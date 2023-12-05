if objProgram.special_future_current_level >= 7 && objGameData.character_id[0] = 1 {
    draw_sprite_ext(sprite_index,image_index,x+7,y-15+sin(objScreen.image_index/32),image_xscale,image_yscale,0,c_white,1);
} else {
    draw_sprite_ext(sprite_index,image_index,x+7,y,image_xscale,image_yscale,0,c_white,1);
}

