action_inherited();
/// Initialize
// state
mode = 0;
// banners
fade_alpha = 0;
planet_ox = 600; //608;
planet_oy = -600; //-416;
banner_ox = objScreen.width + 240;
banner_speed = 16;
zone_first = tr_get_real_prop("titlecard_zone_is_first") > 0;

// title strings
title_word = 0;
for (var i=0; i<4; i+=1)
{
    title_string[i] = "";
    title_length[i] = 0;
    title_pos[i] = 0;
    title_ox[i] = 0;
    title_scale[i, 0] = 12;
}
var rm = FF1_f;
if (objProgram.in_past) rm = FF1_p;
get_titlecard_array(rm, id);

///d3d_end();
d3d_end();

/// init_titlecard();
init_titlecard(true);

