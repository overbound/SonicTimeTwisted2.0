/// @description  Draw slots - without flash reduction
if(flash_visibility)
{
    if selectState==0 || selectState==4 {
        draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);
        if (sprite_index == sprSaveDelete)
        {
            draw_set_font(objResources.fontHud);
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_text_colour(x, y - 10, string_hash_to_newline(tr("_save_delete")), c_red, c_red, c_white, c_white, 1);
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
        }
    }
    else if selectState==1{
    if slots[selectCheck].iconIndex > 11
        draw_sprite_ext(sprSelectStage,2,x,y-44,image_xscale,image_yscale,0,c_white,1);
        else draw_sprite_ext(sprSelectStage,stageLeftRight,x,y-44,image_xscale,image_yscale,0,c_white,1);
    }
    if selectState ==2 {
        if(selectCheck == 0)
        {
            draw_sprite_ext(sprCharSelect,0,x,y+24,1,1,0,c_white,1);
        }
        else
        {
            draw_sprite_ext(sprCharSelect,0,x,y+32,1,1,0,c_white,1);
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
}

