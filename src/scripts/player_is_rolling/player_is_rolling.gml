function player_is_rolling() {
	// player_is_rolling()
	// animate
	animation_new = "spin";
	timeline_speed = 1/max(5-abs(xspeed), 1);
	image_angle = 0;
	// states and flags
	state = player_state_roll;
	spinning = true;
	spindashing = false;
	// counters
	chain_multiplier = 0;
	if shield != noone && shield.timeline_index == animShieldBubbleAction {
		shield.timeline_index = animShieldBubble;
		shield.timeline_position = 0;
		shield.timeline_running = 1;
		shield.timeline_loop = 1;
	}

}
