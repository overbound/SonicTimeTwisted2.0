draw_self();
draw_sprite_ext(sprPlaneHeads,headIndex,x-2,y-4,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(thirdCharacter,image_index,x-12,y-12,image_xscale,image_yscale,0,c_white,1);
if objProgram.special_future_current_level >= 7 && objGameData.character_id[0] = 1 {
    draw_sprite_ext(sprSuperSonicFallingEnding,1,x+7,y-15,image_xscale,image_yscale,0,c_white,1);
} else {
    draw_sprite_ext(characterSprite,1,x+7,y-15,image_xscale,image_yscale,0,c_white,1);
}

