/// @description  Calculating string positions
show_go_separately = tr_get_real_prop("ss_start_go_is_longer") > 0;

title_string[0] = "3";
title_string[1] = "2";
title_string[2] = "1";
title_string[3] = string_upper(tr("_ss_intro_Go"));

/// Originally, the "3 2 1 GO" countdown spans 263 pixels horizontally, from 81 to 344
var title_string_separator = 263;
draw_set_font(objResources.fontTitleLarge);
if(show_go_separately)
{
    for (i=0; i<3; i+=1)
    {
        title_string_separator -= string_width(string_hash_to_newline(title_string[i]));
    }
    title_string_separator = round(title_string_separator/2);
    titre_string_pos[0] = 81;
    titre_string_pos[1] = titre_string_pos[0] + string_width(string_hash_to_newline(title_string[0])) + title_string_separator;
    titre_string_pos[2] = 344 - string_width(string_hash_to_newline(title_string[2]));
    titre_string_pos[3] = 81 + round((263 - string_width(string_hash_to_newline(title_string[3])))/2);
}
else
{
    for (i=0; i<4; i+=1)
    {
        title_string_separator -= string_width(string_hash_to_newline(title_string[i]));
    }
    title_string_separator = round(title_string_separator/3);
    titre_string_pos[0] = 81;
    titre_string_pos[1] = titre_string_pos[0] + string_width(string_hash_to_newline(title_string[0])) + title_string_separator;
    titre_string_pos[2] = titre_string_pos[1] + string_width(string_hash_to_newline(title_string[1])) + title_string_separator;
    titre_string_pos[3] = 344 - string_width(string_hash_to_newline(title_string[3]));
}

draw_set_font(objResources.fontHud);

