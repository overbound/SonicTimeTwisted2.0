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

// Set character_id before parent init so player_change_character runs as Tails
objGameData.character_id[1] = 2;

// Call parent objPlayer Create_0 — sets up physics, animation, collision, etc.
// This calls player_change_character which sets character_id, animation_table, tails_effect
event_inherited();

// Force into normal gameplay state (not inherited temp_state from real player)
state = player_state_stand;
animation_new = "idle";
animation_reset = true;

// No invulnerability — collision events handle damage
invulnerable = 0;