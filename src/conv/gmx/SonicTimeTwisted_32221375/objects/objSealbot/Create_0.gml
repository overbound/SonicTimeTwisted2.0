action_inherited();
/// Initialize
image_speed = 0;
remove = 0;
offscreen_enabled = true;

// this is critical in the case of this enemy because it is really slowing down the game!
is_in_view = false;

// state machine
state = 0;
frozen = false;
// physics
hspeed = 0;
facing = 1;
wall_facing = 0;
cliff_facing = 0;
offset_x = (bbox_right-bbox_left)*0.5;
offset_y = (bbox_bottom-y);
// other
speed_cap = 3;
acceleration = 0.1;
deceleration = 3/29;
range_x = 75;
range_y = 30;
range_x_or_idle = 210;
range_y_or_idle = 120;
//animation
timeline_index = animSealbotIdle;
timeline_loop = false;
timeline_running = false;

