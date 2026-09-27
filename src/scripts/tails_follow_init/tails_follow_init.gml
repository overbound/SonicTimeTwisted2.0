function tails_follow_init() {
	// tails_follow_init()
	// Initialize CPU-controlled Tails follower as a physics-based companion
	
	// Leader reference (the player being followed)
	leader = noone;
	
	// Follow settings
	follow_delay = 30;          // frames behind the leader in position history
	teleport_distance = 480;    // teleport to leader if further than this
	fly_distance = 320;         // start flying toward leader if further than this
	
	// CPU input state
	local_input_state = -1;     // -1 means use global input
	local_input_press = -1;
	local_input_release = -1;
	prev_input = 0;
	
	// Character
	character_id = 2;           // Always Tails
	player_id = 1;              // Player 2 slot
	
	// Physics variables (matching objPlayer)
	xspeed = 0;
	yspeed = 0;
	facing = 1;
	angle = 0;
	relative_angle = 0;
	mask_rotation = 0;
	terrain_id = noone;
	landed = false;
	spinning = false;
	jumping = false;
	wall_direction = 0;
	sliding = 0;
	boarding = false;
	underwater = false;
	
	// Physics constants
	max_xspeed = 28;
	max_yspeed = 28;
	limit_xspeed = true;
	limit_yspeed = true;
	segment_enabled = true;
	segment_width = 16;
	segment_height = 16;
	offset_x = 8;
	offset_y = 13;
	offset_wall = 9;
	depth_mask = 1;
	cliff = 0;
	angle3D = 0;
	
	// Collision terrain list
	terrain_list = ds_list_create();
	
	// Player physics constants (from player_reset_physics)
	roll_threshold = 1.03125;
	slide_threshold = 2.5;
	ceiling_threshold = -4;
	jump_release = 4;
	jump_force = 6.5;
	gravity_force = 0.21875;
	
	// State tracking
	state = player_state_stand;
	chain_multiplier = 0;
	invulnerable = 0;
	
	// Animation
	animation_table = objResources.anim_tails;
	animation = "";
	animation_new = "idle";
	animation_reset = true;
	animation_handler = new AnimationHandler(id);
	
	// Flying catch-up mode
	fly_mode = false;
	fly_speed = 6;
	
	// Previous position for delta
	prev_x = x;
	prev_y = y;
	
	// Tails rotary effect (the spinning tail sprites)
	tails_effect = instance_create(x, y, objTailsEffect);
	tails_effect.player_id = id;
	
	// Visibility and sprite
	visible = true;
	image_speed = 0;
	sprite_y_offset = 0;
	
	// Force initial animation setup
	if (animation_table > -1) {
		animation = animation_new;
		var _anim = ds_map_find_value(animation_table, animation);
		if (_anim != undefined) {
			animation_handler.change_anim(_anim);
		}
	}
}