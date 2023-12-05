/// @description  Handle state
switch state
{
case 1: // move offsets (message)
    if title_offset1 title_offset1 -= 16;
    if title_offset2 title_offset2 -= 16;
    break;
case 2: // move offsets (scores)
    if score_offset1 score_offset1 -= 16;
    if score_offset2 score_offset2 -= 16;
    if score_offset3 score_offset3 -= 16;
    if score_offset4 score_offset4 -= 16;
    break;
case 3: // apply scores
    var change;
    
    // time bonus
    if time_bonus
    {
        change = min(time_bonus, max_change);
        time_bonus -= change;
        total_bonus += change;
        player_add_score(change);
    }
    // rings bonus    
    if rings_bonus
    {
        change = min(rings_bonus, max_change);
        rings_bonus -= change;
        total_bonus += change;
        player_add_score(change);
    }
    // perfect bonus    
    if perfect_bonus
    {
        change = min(perfect_bonus, max_change);
        perfect_bonus -= change;
        total_bonus += change;
        player_add_score(change);
    }
    // if all scores have been added completely
    if not (time_bonus or rings_bonus or perfect_bonus)
    {
        // sound
        stop_sound(sndBeep);
        //play_sfx(sndChing, 0);
        // finished
        state += 1;
        alarm[3] = 220;
        
        // the values to draw must represent actual values now, no matter the mode
        draw_time_bonus = time_bonus;
        draw_rings_bonus = rings_bonus;
        draw_perfect_bonus = perfect_bonus;
        draw_total_bonus = total_bonus;
    }
    else
    {
        if ((objScreen.image_index mod 4) == 0)
        {
            // sound
            stop_sound(sndBeep);
            play_sfx(sndBeep, 0);
        }
        // refresh values to display
        if(objScreen.score_tally_mode == 0)
        {
            draw_time_bonus = randomize_number(digits_time_bonus);
            draw_rings_bonus = randomize_number(digits_rings_bonus);
            draw_perfect_bonus = randomize_number(digits_perfect_bonus);
            draw_total_bonus = randomize_number(digits_total_bonus);
        }
        else
        {
            draw_time_bonus = time_bonus;
            draw_rings_bonus = rings_bonus;
            draw_perfect_bonus = perfect_bonus;
            draw_total_bonus = total_bonus;
        }
    }
    break;
}

