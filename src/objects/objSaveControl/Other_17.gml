/// @description  Draw slots - with flash reduction

if selectState==0 || selectState==4 {
    if (sprite_index == sprSaveDelete)
    {
        draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,0.4 + (flash_alpha/2));
        draw_set_font(objResources.fontHud);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text_colour(x, y - 10, string_hash_to_newline(tr("_save_delete")), c_red, c_red, c_white, c_white, 0.4 + (flash_alpha/2));
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
    else
    {
        draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,flash_alpha);
    }
}
else if selectState==1{
if slots[selectCheck].iconIndex > 11
    draw_sprite_ext(sprSelectStage,2,x,y-44,image_xscale,image_yscale,0,c_white,flash_alpha);
    else
    {
        draw_sprite_ext(sprSelectStage,stageLeftRight,x,y-44,image_xscale,image_yscale,0,c_white,0.3 + (flash_alpha/2));
        draw_sprite_ext(sprSelectStageFade,stageLeftRight,x,y-44,image_xscale,image_yscale,0,c_white,0.5);
    }
}
if selectState ==2 {
    if(selectCheck == 0)
    {
        draw_sprite_ext(sprCharSelect,0,x,y+24,1,1,0,c_white,flash_alpha);
    }
    else
    {
        draw_sprite_ext(sprCharSelect,0,x,y+32,1,1,0,c_white,flash_alpha);
    }
}
if selectState==5 {
    draw_sprite_ext(stageDeleteConfirmSprite,0,x,y,image_xscale,image_yscale,0,c_white,1);
    draw_set_font(objResources.fontHud);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_colour(x, y - 10, string_hash_to_newline(tr("_save_delete")), c_red, c_red, c_white, c_white, 1);
    if (stageDeleteConfirmSprite == sprDeleteConfirm)
        draw_text_colour(x, y + 10, string_hash_to_newline(tr("_save_delete_YesNo")), c_red, c_red, c_white, c_white, 1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}


