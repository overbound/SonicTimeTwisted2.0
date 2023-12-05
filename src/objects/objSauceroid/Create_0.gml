action_inherited();
/// Initialize enemy
image_speed = 0;
remove = 1;
// states and flags
state = 0;
// other
view_id =-1;
ox = 180;
oy = -80;
offset = 260;
wait_timer = -1;
shot_number = 0;
shot[0] = -1;

action_timeline_set(animSaucer, 0, 0, 1);
if objProgram.in_past == true {
sprite_index=sprButteroid;
}

