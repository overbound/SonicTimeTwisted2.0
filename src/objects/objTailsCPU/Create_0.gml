/// @description Initialize as CPU Tails follower
// Set follower properties before parent init
leader = noone;
follow_delay = 30;
teleport_distance = 480;
fly_distance = 320;
local_input_state = -1;
local_input_press = -1;
local_input_release = -1;
prev_input = 0;
fly_mode = false;
fly_speed = 6;

// Force Tails character (player_id 1 = second player slot)
player_id = 1;

// Call parent objPlayer Create_0 — sets up physics, animation, collision, etc.
event_inherited();

// Override character to Tails
character_id = 2;
animation_table = objResources.anim_tails;
animation_new = "idle";
animation_reset = true;

// CPU Tails is always invulnerable (no death, just flash)
invulnerable = 999999;

// Create tails effect companion
tails_effect = instance_create(x, y, objTailsEffect);
tails_effect.player_id = id;