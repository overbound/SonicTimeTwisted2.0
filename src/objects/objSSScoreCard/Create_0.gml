action_inherited();

if objProgram.in_past {
    if(objProgram.special_past_current_level == 7)
    {
        line1 = string_replace(tr("_ss_scorecard_GOT_ALL"), "%c", name_tag);
        line2 = tr("_ss_scorecard_TIME_STONES");
    }
    else
    {
        line1 = string_replace(tr("_ss_scorecard_GOT_A"), "%c", name_tag);
        line2 = tr("_ss_scorecard_TIME_STONE");
    }
} else {
    if(objProgram.special_future_current_level == 7)
    {
        line1 = string_replace(tr("_ss_scorecard_GOT_ALL"), "%c", name_tag);
        line2 = tr("_ss_scorecard_CHAOS_EMERALDS");
    }
    else
    {
        line1 = string_replace(tr("_ss_scorecard_GOT_A"), "%c", name_tag);
        line2 = tr("_ss_scorecard_CHAOS_EMERALD");
    }
}
// recalculate offsets
title_ox1 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(line1)) * 0.5);
title_ox2 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(line2)) * 0.5);
title_offset1 = ceil((title_ox1 + string_width(string_hash_to_newline(line1))) * 0.0625) * 16;
title_offset2 = ceil((objScreen.width - title_ox2) * 0.0625) * 16;
perfect_bonus = objProgram.ss_perfect_bonus;
rings_bonus = objProgram.ss_rings_bonus;
time_bonus = objProgram.ss_time_bonus;
is_act_scorecard = false;
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
// save initial offsets
default_title_offset1 = title_offset1;
default_title_offset2 = title_offset2;
default_score_offset1 = score_offset1;
default_score_offset2 = score_offset2;
default_score_offset3 = score_offset3;
default_score_offset4 = score_offset4;

// lowercase name tag
switch (objGameData.character_id[0])
{
case 2: name_tag_lc = tr("_charname_1_lc"); break;
case 3: name_tag_lc = tr("_charname_2_lc"); break;
default: name_tag_lc = tr("_charname_0_lc"); break;
}

var name_tag_altnoun = "";
switch (objGameData.character_id[0])
{
case 2: name_tag_altnoun = tr("_charname_1_altnoun"); break;
case 3: name_tag_altnoun = tr("_charname_2_altnoun"); break;
default: name_tag_altnoun = tr("_charname_0_altnoun"); break;
}

super_title_line1 = string_replace(tr("_ss_scorecard_CAN_NOW_BECOME"), "%c", name_tag);
super_title_line2 = string_replace(tr("_ss_scorecard_SUPER"), "%c", name_tag_altnoun);
super_title_line1_player_overlay = name_tag;
super_title_line2_player_overlay = string_replace(tr("_ss_scorecard_SUPER"), "%c", name_tag_altnoun);
if(objProgram.inputManager.is_touchscreen)
{
    ss_instructions1 = string_replace(tr("_ss_scorecard_JUMP_AND_HOLD_TOUCHSCREEN"), "%c", name_tag_lc);
}
else
{
    ss_instructions1 = string_replace(tr("_ss_scorecard_JUMP_AND_HOLD"), "%c", name_tag_lc);
}
ss_instructions2 = string_replace(tr("_ss_scorecard_TO_TURN_INTO"), "%c", name_tag_lc);
next_message = false;
score_ox1 = score_ox;
score_ox2 = score_ox;
/* If Sonic just got the seventh Chaos Emerald - show a message */
if(
    objGameData.character_id[0] == 1
    && 
    (!objProgram.in_past)
    && 
    (objProgram.special_future_current_level == 7)
    )
{
    next_message = true;
}

// do we have the %break format character?
if (string_count("%b", super_title_line2) > 0) {
    // here we just get rid of the character entirely.
    super_title_line2 = string_replace(super_title_line2, "%b", "");
    var _bpos = string_pos("%b", super_title_line2_player_overlay) + string_length("%b");
    var _bend = string_length(super_title_line2_player_overlay) - (_bpos - 1);
    super_title_line2_player_overlay = string_copy(super_title_line2_player_overlay, _bpos, _bend);
    show_debug_message("Found %break format character.");
    show_debug_message("overlay=" + super_title_line2_player_overlay);
}

// italian and german shenanigans
name_offsetx = string_width(string_hash_to_newline(string_copy(line1, 1, string_pos(name_tag, line1) - 1)));
sline1_offsetx = string_width(string_hash_to_newline(string_copy(super_title_line1, 1, string_pos(super_title_line1_player_overlay, super_title_line1) - 1)));
sline2_offsetx = string_width(string_hash_to_newline(string_copy(super_title_line2, 1, string_pos(super_title_line2_player_overlay, super_title_line2) - 1)));
//next_message = true;

/* */
/*  */
