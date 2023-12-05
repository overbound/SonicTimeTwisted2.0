
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);
draw_set_font(objResources.fontHud);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_colour(x, y - 10 - 13, string_hash_to_newline(tr("_save_nosave")), c_gray, c_gray, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if characterSelect == 3 {
    draw_sprite_ext(sprKnucklesLevelEnd,8,x,y+30,1,1,0,c_white,1);
} else if characterSelect == 2 {
    draw_sprite_ext(sprTailsLevelEnd,1,x,y+24,1,1,0,c_white,1);
} else {
    draw_sprite_ext(sprSonicLevelEnd,1,x,y+28,1,1,0,c_white,1);
}

