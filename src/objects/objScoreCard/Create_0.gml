action_inherited();
/// Initialize
// basics
state = 0;
total_bonus = 0;
// name tag
switch objGameData.character_id[0]
{
case 2: name_tag = tr("_charname_1"); break;
case 3: name_tag = tr("_charname_2_wide"); break;
default: name_tag = tr("_charname_0");
}
// title color
title_color = c_white;
switch objGameData.character_id[0]
{
case 2: title_color = c_orange; break;
case 3: title_color = c_red; break;
default: title_color = c_blue;
}
act = 0;
var total_time = 0;
time_bonus = 0;
perfect_bonus = -1;
if(instance_exists(objLevel))
{
    // time bonus
    var total_time = objLevel.timer div 60;
    if total_time > 480 time_bonus = 50000; else
    if total_time > 465 time_bonus = 10000; else
    if total_time > 450 time_bonus = 5000; else
    if total_time > 420 time_bonus = 4000; else
    if total_time > 390 time_bonus = 3000; else
    if total_time > 330 time_bonus = 2000; else
    if total_time > 270 time_bonus = 1000; else
    if total_time > 210 time_bonus = 500; else
    if total_time == 1 time_bonus = 100000; else
    time_bonus = 0;
    
    // perfect bonus
    if (objLevel.total_rings == 0) perfect_bonus = 50000; else
    perfect_bonus = -1;
    
    // current act
    act = objLevel.act;
}
// lines to display : "character got" and "through act 1/2"
line1 = string_replace(tr("_scorecard_line1"), "%c", name_tag);
line2 = string_replace(tr("_scorecard_line2"), "%a", string(act));
// ring bonus
rings_bonus = objGameData.rings[0]*10;
// screen positions
draw_set_font(objResources.fontTitleSmallest);
title_ox1 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(line1)) * 0.5);
title_ox2 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(line2)) * 0.5);
score_ox = (objScreen.width * 0.5) - 104;
tally_ox = (objScreen.width * 0.5) + 104;
// offsets
title_offset1 = ceil((title_ox1 + string_width(string_hash_to_newline(line1))) * 0.0625) * 16;
title_offset2 = ceil((objScreen.width - title_ox2) * 0.0625) * 16;
draw_set_font(objResources.fontTitleSmallest);
score_offset1 = (ceil((objScreen.width - score_ox) * 0.0625) * 16) + 48;
score_offset2 = score_offset1 + 80;
score_offset3 = score_offset1 + 80;
score_offset4 = score_offset1 + 96;
// music
stop_all_music(false, true);
audio_stop_all();
play_jingle(bgmClear, false);
// start event
alarm[0] = 60;
// set this to true so that the drawing is relative to the view
is_act_scorecard = true;
/* the speed of the countdown depends on the score tally mode
if the score tally mode is "random digits" or "variable speed",
which are basically the same outside of what's displayed,
then the "change" depends on the biggest bonus value from which
to count down. Else, its value is mostly fixed
objScreen.score_tally_mode : 0 - random digits, 1 - variable speed, 2 - constant speed
*/
max_change = 100;
if(objScreen.score_tally_mode < 2)
{
   max_change = max(1, max(time_bonus, rings_bonus, perfect_bonus) div (215));
}
// copies of variables containing bonuses
// if the score tally is set to "random digits" mode, these variables, which
// will be drawn, contain different values, unrelated to the real ones
draw_time_bonus = time_bonus;
draw_rings_bonus = rings_bonus;
draw_perfect_bonus = perfect_bonus;
draw_total_bonus = total_bonus;
// and these contain numbers of digits to show for the "random digits" mode
digits_time_bonus = string_length(string(time_bonus));
digits_rings_bonus = string_length(string(rings_bonus));
var expected_total_bonus = time_bonus + rings_bonus;
if(perfect_bonus > 0)
{
    expected_total_bonus += perfect_bonus;
    digits_perfect_bonus = string_length(string(abs(perfect_bonus)));
}
else
{
    digits_perfect_bonus = 0;
}
digits_total_bonus = string_length(string(expected_total_bonus));
// italian and german shenanigans
name_offsetx = string_width(string_hash_to_newline(string_copy(line1, 1, string_pos(name_tag, line1) - 1)));

/* */
/*  */
