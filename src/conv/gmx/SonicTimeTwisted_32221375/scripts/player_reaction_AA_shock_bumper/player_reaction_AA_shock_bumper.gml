// player_reaction_AA_shock_bumper(local_id)
// ignore if layer mismatch
if not (depth_mask&argument0.depth_mask) return false;
// ignore if still recoiling
if argument0.alarm[0] return false;
// ignore if not "close" enough
if argument0.image_xscale<0.90 or argument0.image_xscale>1.10 return false;
// fall if hurt
if (state==player_state_hurt) player_is_falling();
// states and flags
rolling_jump = false;
// movement and collision
xspeed = 0;
yspeed = 7*sign(y-argument0.y);
// character values
if character_id==3 glide_falling = false;
// trigger bumper
argument0.alarm[0] = 16;
jump_action = true;
// move outside
while collision_box(offset_x, offset_y, (mask_rotation mod 180), argument0) {x += sign(xspeed); y += sign(yspeed);}
// gain points
if argument0.counter[player_id]<10
{
    // scoring
    player_add_score(10);
    argument0.counter[player_id] += 1;
    instance_create(argument0.x, argument0.y, objScorePopup);
}
// sound
play_sfx(sndAADropBumper, 2);

// rumble
rumble(rumble_short_strong);
// hard collision found
return true;
