
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);
draw_set_font(objResources.fontMicro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_colour(x - 19, y - 19, string_hash_to_newline(tr("_save_Past")), c_white, c_white, c_white, c_white, 1);
draw_text_colour(x + 18, y - 19, string_hash_to_newline(tr("_save_Future")), c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_ext(sprStatic,floor(staticIndex),x,y-57,1,1,0,c_white,1);
draw_sprite_ext(sprSaveIconsFuture,iconIndex,x,y-57,image_xscale,image_yscale,0,c_white,visibleFuture);
draw_sprite_ext(sprSaveIconsPast,iconIndex,x,y-57,image_xscale,image_yscale,0,c_white,visiblePast);
staticIndex+=.5;
if staticIndex >= 5 {
    staticIndex=0;
}
if characterSelect == 3 {
    draw_sprite_ext(sprKnucklesLevelEnd,8,x,y+46,1,1,0,c_white,1);
} else if characterSelect == 2 {
    draw_sprite_ext(sprTailsLevelEnd,1,x,y+40,1,1,0,c_white,1);
} else {
    draw_sprite_ext(sprSonicLevelEnd,1,x,y+44,1,1,0,c_white,1);
}
if currentStone > 0 {
    draw_sprite_ext(sprSSStone,0,x-7,y+7,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,0,x-7,y+7,.35,.35,0,c_black,.5);
if currentStone > 1 {
    draw_sprite_ext(sprSSStone,1,x-19,y+14,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,1,x-19,y+14,.35,.35,0,c_black,.5);
if currentStone > 2 {
    draw_sprite_ext(sprSSStone,2,x-27,y+26,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,2,x-27,y+26,.35,.35,0,c_black,.5);
if currentStone > 3 {
    draw_sprite_ext(sprSSStone,3,x-30,y+39,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,3,x-30,y+39,.35,.35,0,c_black,.5);
if currentStone > 4 {
    draw_sprite_ext(sprSSStone,4,x-27,y+52,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,4,x-27,y+52,.35,.35,0,c_black,.5);
if currentStone > 5 {
    draw_sprite_ext(sprSSStone,5,x-20,y+63,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,5,x-20,y+63,.35,.35,0,c_black,.5);
if currentStone > 6 {
    draw_sprite_ext(sprSSStone,6,x-7,y+70,.35,.35,0,c_white,1);
} else draw_sprite_ext(sprSSStone,6,x-7,y+70,.35,.35,0,c_black,.5);
if currentEmerald > 0 {
    draw_sprite_ext(sprSSEmerald,0,x+7,y+8,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,0,x+7,y+8,.3,.3,0,c_black,.5);
if currentEmerald > 1 {
    draw_sprite_ext(sprSSEmerald,1,x+19,y+15,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,1,x+19,y+15,.3,.3,0,c_black,.5);
if currentEmerald > 2 {
    draw_sprite_ext(sprSSEmerald,2,x+27,y+27,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,2,x+27,y+27,.3,.3,0,c_black,.5);
if currentEmerald > 3 {
    draw_sprite_ext(sprSSEmerald,3,x+30,y+40,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,3,x+30,y+40,.3,.3,0,c_black,.5);
if currentEmerald > 4 {
    draw_sprite_ext(sprSSEmerald,4,x+27,y+53,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,4,x+27,y+53,.3,.3,0,c_black,.5);
if currentEmerald > 5 {
    draw_sprite_ext(sprSSEmerald,5,x+20,y+64,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,5,x+20,y+64,.3,.3,0,c_black,.5);
if currentEmerald > 6 {
    draw_sprite_ext(sprSSEmerald,6,x+7,y+71,.3,.3,0,c_white,1);
} else draw_sprite_ext(sprSSEmerald,6,x+7,y+71,.3,.3,0,c_black,.5);

