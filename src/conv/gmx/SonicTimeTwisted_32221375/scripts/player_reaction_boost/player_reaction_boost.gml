// player_reaction_boost(local_id)
// ignore if triggered already
if argument0.alarm[player_id] return false;
// trigger
argument0.alarm[player_id] = 20;
// adjust speed based on facing
xspeed = argument0.spd*(argument0.facing+(argument0.facing==0));
facing = sign(xspeed);
if landed
{
    sliding = 16;
    if (state == player_state_glide_slide) player_is_running();
}
// sound
play_sfx(sndBoost, 1);
// rumble
rumble(rumble_short_strong_and_mid);
// hard collision found
return false;
