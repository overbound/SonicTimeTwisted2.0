/// @description Initialize as buffer-driven Tails follower
event_inherited();

leader = noone;
follow_delay = 16;           // 16-frame delay (matching Genesis Sonic 2)
buffer_size = 64;            // 64-frame ring buffer
teleport_distance = 320;     // rubberband threshold — viewport width + buffer

// Tracking
prev_sprite = -1;
image_speed = 0;
visible = true;

// Variables objTailsEffect reads from player_id
character_id = 2;
animation = "";
facing = 1;
state = player_state_stand;
angle = 0;
xspeed = 0;
yspeed = 0;
spinning = false;

// Hit protection
invulnerable = 0;
tails_hurt = 0;

// Fly catch-up mode
tails_catchup = false;

// Create tails rotary effect
tails_effect = instance_create(x, y, objTailsEffect);
tails_effect.player_id = id;