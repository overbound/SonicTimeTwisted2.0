/// @description  Render title
var i;
// ignore if not rendering card
if mode<1 or mode>2 exit;
// planet back
draw_set_color(image_blend);
draw_set_alpha(image_alpha);
draw_sprite(sprTitlePlanet, 0, __view_get( e__VW.XView, view_current )+planet_ox, __view_get( e__VW.YView, view_current )+planet_oy);
// banner
var boxm = floor(banner_ox)-208;
draw_sprite(sprTitleBannerLeft, 0, __view_get( e__VW.XView, view_current )+boxm, __view_get( e__VW.YView, view_current )+186);
for (i=0; i<3; i+=1) {
    draw_sprite(sprTitleBanner, 0, __view_get( e__VW.XView, view_current )+boxm+(i*208), __view_get( e__VW.YView, view_current )+186);
}
// planet front
draw_sprite(sprTitlePlanet, 1, __view_get( e__VW.XView, view_current )+planet_ox, __view_get( e__VW.YView, view_current )+planet_oy);

draw_set_halign(fa_left);
// title first word
draw_set_font(word1font);
for (i=0; i<title_pos[0]+1; i+=1) draw_text_transformed(__view_get( e__VW.XView, view_current )+title_ox[0]+string_width(string_hash_to_newline(string_copy(title_string[0], 0, i))), __view_get( e__VW.YView, view_current )+64, string_hash_to_newline(string_char_at(title_string[0], i+1)), title_scale[0, i], title_scale[0, i], 0);
// title second word
if title_word>0
{
    draw_set_font(objResources.fontTitleLarge);
    for (i=0; i<title_pos[1]+1; i+=1) draw_text_transformed(__view_get( e__VW.XView, view_current )+title_ox[1]+string_width(string_hash_to_newline(string_copy(title_string[1], 0, i))), __view_get( e__VW.YView, view_current )+word2y, string_hash_to_newline(string_char_at(title_string[1], i+1)), title_scale[1, i], title_scale[1, i], 0);
    // title "Zone"
    if title_word>1
    {
        draw_set_font(word3font);
        for (i=0; i<title_pos[2]+1; i+=1) draw_text_transformed(__view_get( e__VW.XView, view_current )+title_ox[2]+string_width(string_hash_to_newline(string_copy(title_string[2], 0, i))), __view_get( e__VW.YView, view_current )+word3y, string_hash_to_newline(string_char_at(title_string[2], i+1)), title_scale[2, i], title_scale[2, i], 0);
    }
}

// title "Act"
if title_word>2
{
    draw_set_color(act_color);
    draw_set_font(objResources.fontTitleSmallest);
    for (i=0; i<title_pos[3]+1; i+=1) draw_text_transformed(__view_get( e__VW.XView, view_current )+title_ox[3]+string_width(string_hash_to_newline(string_copy(title_string[3], 0, i))), __view_get( e__VW.YView, view_current )+166, string_hash_to_newline(string_char_at(title_string[3], i+1)), title_scale[3, i], title_scale[3, i], 0);
}
draw_set_color(c_white);
draw_set_alpha(1);
