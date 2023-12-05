action_inherited();
/// Initialize
image_speed = 0;

// identification
player_id = 0;
character_id = -1;
tails_effect  = noone;

// animation
animation_table = -1;
animation = "";
animation_new = objProgram.temp_animation;
timeline_speed = 1;
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (11) );
    
animation_reset = true;

// states and flags
state = objProgram.temp_state;
state_reset = false;
spinning = false;
jumping = false;
rolling_jump = false;
jump_action = false;
spindashing = false;
dropDash = false;
underwater = false;
transforming = false;
reverse_control = false;
boarding = false;

// movement and collision
terrain_list = ds_list_create();
wall_direction = 0;
xspeed = 0;
yspeed = 0;
depth_mask = 1;
facing = 1;
cliff = 0;
angle3D = 0;
uphill3D = false;
gimmick_id = noone;
wallRunCenter = 0;

// counters
camera_pan_up = -110;
camera_pan_down = 110;
spindash_charge = 0;
spindash_pitch = 0;
chain_multiplier = 0;

// timers
sliding = 0;
underwater_count = -1;
invulnerable = 0;
ignore_rings = 0;
superspeed = 0;
superform = -1;

// camera
camera = instance_create(x, y, objCamera);

// effects
shield = noone;
instashield = noone;
invincibility = noone;

// set air state
player_in_air();

// initialize values
player_change_character(objGameData.character_id[player_id], true);
player_reset_physics();

// system flags
segment_enabled = true;
offscreen_enabled = true;
/*max_xspeed = 128;
max_yspeed = 128;
limit_xspeed = false;
limit_yspeed = false;*/
max_xspeed = 28;
max_yspeed = 28;
limit_xspeed = true;
limit_yspeed = true;

// constant physics values
ceiling_threshold = -4; //-4

ramp_threshold = 2.5;
slide_threshold = 2.5;
waterrun_threshold = 4;
roll_threshold = 1.03125;
unroll_threshold = 0.5;
brake_threshold = 4;
air_friction = 0.96875;
slope_friction = 0.078125;
slope_friction_cap = 0.125;
slope_friction_up = 0.071825;
slope_friction_down = 0.3125;
spindash_friction = 0.96875;

super_lose_rings = false;

// position table
table_size = 64;
xtable = ds_list_create();
ytable = ds_list_create();

// sound
reserved_sound = -1;
shield_type = -1;

wave = noone;

sprite_y_offset = 0;

waterCountAlpha = 0;
waterCountTime = 0;
waterCountDigit = 0;

set_input_enabled(true);

/* */
/*  */
