/// @description  player_reaction_AA1Start(local_id)
/// @param local_id
function player_reaction_AA1_start(argument0) {
	// ignore if we skipped the cutscene already
	if objProgram.spawn_tag!=0 {
	    camera.left = argument0.left;
	    camera.right = room_width;
	    objProgram.cutscene = false;
	    return false;
	}
	// only trigger on landing
	if not (landed) { x = argument0.xx return false; }
	// animate
	image_angle = 0;
	animation_new = "idle";
	// states and flags
	state = player_state_standby;
	xspeed = 0;
	// camera
	camera.left = argument0.left;
	camera.right = room_width;
	camera.panning_hspeed = 4;
	// setup checkpoint
	objProgram.spawn_tag = 1;
	objProgram.cutscene = false;
	// start timer
	objLevel.timer_enabled = true;
	objLevel.started = false;
	// create hud
	with objHud visible=1;
	// setup titlecard
	with instance_create(0, 0, objTitlecard)
	{
	    get_titlecard_array(room, id);
	    event_perform(ev_other, ev_room_start);
	    mode = 1;
	}
	set_input_enabled(true);
	// remove trigger
	with argument0 instance_destroy();
	// hard collision found
	return true;



}
