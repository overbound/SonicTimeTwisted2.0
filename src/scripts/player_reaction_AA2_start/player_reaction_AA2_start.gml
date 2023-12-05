/// @description  player_reaction_AA1Start(local_id)
/// @param local_id
function player_reaction_AA2_start(argument0) {
	// ignore if we skipped the cutscene already
	if objProgram.spawn_tag!=0 return false;
	// force to drop if we're flying or gliding
	if (state==player_state_glide) {player_is_glide_falling(); return true;}
	if (state==player_state_shield_fly) {player_state_standby(); return true;}
	if (state==player_state_fly)
	{
	    // animate
	    animation_new = "walk";
	    timeline_speed = 0.125;
	    // states and flags
	    state = player_state_fall;
	    jump_action = false;
	    // movement and collision
	    xspeed = 0;
	    // hard collision found
	    return true;
	}
	// only trigger on landing
	if not (landed) return false;
	// animate
	image_angle = 0;
	animation_new = "idle";
	// states and flags
	state = player_state_standby;
	xspeed = 0;
	// camera
	camera.top = 0;
	camera.left = 2176;
	camera.right = room_width;
	camera.bottom = room_height;
	camera.panning_hspeed = 4;
	// setup checkpoint
	objProgram.spawn_tag = 1;
	objProgram.cutscene = false;
	// start timer
	objLevel.timer_enabled = true;
	objLevel.timer = 36000
	//objLevel.started = false;
	// setup titlecard
	with instance_create(0, 0, objTitlecard)
	{
	    get_titlecard_array(room, id);
	    event_perform(ev_other, ev_room_start);
	    mode = 1;
	}
	play_music_intro(objMusic.musicIntroAsset, 0);
	// remove trigger
	with argument0 instance_destroy();
	// hard collision found
	return true;



}
