/// @description Initialize as CPU Tails follower
// Call parent objPlayer Create_0 — sets up physics, collision, camera, position tables, AnimationHandler
// BUT: parent hardcodes player_id=0, so it calls player_change_character with wrong character
event_inherited();

// === Now override everything the parent got wrong ===

// Identity — force Tails
character_id = 2;
player_id = 1;

// Character re-initialization — call player_change_character as Tails
// First call in parent used character_id[0]; this call uses character_id=2 directly
// The first call won't have created tails_effect (since we only spawn when NOT tails),
// so this second call won't duplicate
player_change_character(2, true);

// Start in the air so CPU Tails falls naturally, uses real physics from frame 1
player_in_air();

// Force animation
animation_new = "spin";  // air animation
animation_reset = true;

// No shield, no invincibility
invulnerable = 0;
image_alpha = 1;

// === Follower variables ===
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