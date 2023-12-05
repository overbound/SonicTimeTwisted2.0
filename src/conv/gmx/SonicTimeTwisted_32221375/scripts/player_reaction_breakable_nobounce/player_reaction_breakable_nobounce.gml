// player_reaction_breakable_nobounce(local_id, code)
// ignore if not spinning
if not spinning && character_id != 3 return false;
if x > argument0.x {
    argument0.facing = -1;
} else argument0.facing = 1;
// check collision code
switch argument1
{
case 2:
case -2:
    // ignore if not jumping
    if landed return false;
}
// destroy object
with argument0 instance_destroy();
// sound
play_sfx(sndBreak, 2);
// rumble
rumble(rumble_short_strong);
// hard collision found
return true;
