/// @description  Draw scorecard - unless there is a message for Super Sonic, delegate to parent
if(state >= 6)
{
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
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_color(round(draw_x_offset+score_ox1 + score_offset1), draw_y_offset_score + 112, string_hash_to_newline(ss_instructions1),c_white,c_white,c_yellow,c_yellow,1);
    draw_text_color(round(draw_x_offset+score_ox2 + score_offset2), draw_y_offset_score + 128, string_hash_to_newline(ss_instructions2),c_white,c_white,c_yellow,c_yellow,1);
    // text
    draw_set_font(objResources.fontTitleSmallest);
    draw_text_color(round(draw_x_offset+title_ox1 - title_offset1), draw_y_offset_title + 56, string_hash_to_newline(super_title_line1),c_white,c_white,c_gray,c_gray,1);
    draw_text_color(round(draw_x_offset+title_ox1 - title_offset1 + sline1_offsetx), draw_y_offset_title + 56, string_hash_to_newline(super_title_line1_player_overlay),c_white,c_white,title_color,title_color,1);
    draw_text_color(round(draw_x_offset+title_ox2 + title_offset2), draw_y_offset_title + 74, string_hash_to_newline(super_title_line2),c_white,c_white,c_gray,c_gray,1);
    draw_text_color(round(draw_x_offset+title_ox2 + title_offset2 + sline2_offsetx), draw_y_offset_title + 74, string_hash_to_newline(super_title_line2_player_overlay),c_white,c_white,title_color,title_color,1);
}
else
{
    event_inherited();
}
/*
draw_set_halign(fa_center);
draw_set_font(objResources.fontHud);
draw_text(view_wview[view_current]/2, view_hview[view_current] - 32, "State "+string(state));
draw_set_halign(fa_left);
*/

/* */
/*  */
