function tails_follow_init() {
	// tails_follow_init()
	// Initialize CPU-controlled Tails follower variables
	
	// Leader reference (the player being followed)
	leader = noone;
	
	// Follow settings
	follow_delay = 30;          // frames behind the leader in position history
	teleport_distance = 480;    // teleport to leader if further than this
	fly_distance = 320;         // start flying toward leader if further than this
	
	// Movement tracking
	move_speed = 0;
	move_dx = 0;
	move_dy = 0;
	prev_x = x;
	prev_y = y;
	
	// State tracking (needed for objTailsEffect compatibility)
	character_id = 2;           // Always Tails
	state = player_state_stand;
	facing = 1;
	angle = 0;
	spinning = false;
	jumping = false;
	invulnerable = 0;
	xspeed = 0;
	yspeed = 0;
	underwater = false;
	chain_multiplier = 0;      // For TailsEffect collision scoring
	
	// Collision offsets (for compatibility, CPU Tails has no collision)
	offset_x = 8;
	offset_y = 13;
	
	// Animation
	animation_table = objResources.anim_tails;
	animation = "";
	animation_new = "idle";
	animation_reset = true;
	animation_handler = new AnimationHandler(id);
	timeline_speed = 1;
	
	// Flying catch-up mode
	fly_mode = false;
	fly_speed = 6;
	
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