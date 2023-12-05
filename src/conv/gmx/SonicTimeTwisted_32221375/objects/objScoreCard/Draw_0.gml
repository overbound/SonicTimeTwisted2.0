/// @description  Draw scorecard
var draw_x_offset, draw_y_offset_title, draw_y_offset_score;
draw_x_offset = __view_get( e__VW.XView, view_current );
draw_y_offset_title = __view_get( e__VW.YView, view_current );
draw_y_offset_score = __view_get( e__VW.YView, view_current );
if(!is_act_scorecard)
{
    draw_y_offset_title -= 16;
    draw_y_offset_score += 16;
}
draw_set_font(objResources.fontHud);
draw_set_halign(fa_left);
draw_text_color(round(draw_x_offset+score_ox + score_offset1), draw_y_offset_score + 112, string_hash_to_newline(tr("_scorecard_TIME_BONUS")),c_white,c_white,c_yellow,c_yellow,1);
draw_text_color(round(draw_x_offset+score_ox + score_offset2), draw_y_offset_score + 128, string_hash_to_newline(tr("_scorecard_RING_BONUS")),c_white,c_white,c_yellow,c_yellow,1);
if perfect_bonus > -1 draw_text_color(round(draw_x_offset+score_ox + score_offset3), draw_y_offset_score + 144, string_hash_to_newline(tr("_scorecard_PERFECT_BONUS")),c_white,c_white,c_yellow,c_yellow,1);
draw_text_color(round(draw_x_offset+score_ox + score_offset4), draw_y_offset_score + 160, string_hash_to_newline(tr("_scorecard_TOTAL")),c_white,c_white,c_yellow,c_yellow,1);
// text
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(objResources.fontTitleSmallest);
draw_text_color(round(draw_x_offset+title_ox1 - title_offset1), draw_y_offset_title + 56, string_hash_to_newline(line1),c_white,c_white,c_gray,c_gray,1);
draw_text_color(round(draw_x_offset+title_ox1 - title_offset1 + name_offsetx), draw_y_offset_title + 56, string_hash_to_newline(name_tag),c_white,c_white,title_color,title_color,1);
draw_text_color(round(draw_x_offset+title_ox2 + title_offset2), draw_y_offset_title + 74, string_hash_to_newline(line2),c_white,c_white,c_gray,c_gray,1);
draw_set_halign(fa_right);
draw_set_font(objResources.fontHud);
draw_text(draw_x_offset + tally_ox + score_offset1, draw_y_offset_score + 112, string_hash_to_newline(draw_time_bonus));
draw_text(draw_x_offset + tally_ox + score_offset2, draw_y_offset_score + 128, string_hash_to_newline(draw_rings_bonus));
if perfect_bonus > -1 draw_text(draw_x_offset + tally_ox + score_offset3, draw_y_offset_score + 144, string_hash_to_newline(draw_perfect_bonus));
draw_text(draw_x_offset + tally_ox + score_offset4, draw_y_offset_score + 160, string_hash_to_newline(draw_total_bonus));

