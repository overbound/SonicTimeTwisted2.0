event_inherited();
/// Initialize enemy
image_speed = 0;
remove = 1;
// states and flags
state = 0;
// other
view_id =-1;
ox = (objScreen.width/2 - 33);
oy = -80;
offset = (objScreen.width/2 + 47);
wait_timer = -1;
shot_number = 0;
shot[0] = -1;

timeline_index = animSaucer;
timeline_position = 0;
timeline_running = 1;
timeline_loop = 1;
if objProgram.in_past == true {
sprite_index=sprButteroid;
}

