action_inherited();
/// Initialize
image_blend = c_red;
direction = 206;
remove = 2;
reaction_script = player_reaction_harmful;
// states and flags
state = 0;
// movement
ox = x;
oy = y;
distance = 0;
pattern = 0;
firing_speed = 4;
sweeping_speed = 2;
// other
parent_id = noone;

action_sound(sndMetalLaser, 1);
