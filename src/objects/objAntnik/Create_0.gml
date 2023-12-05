action_inherited();
/// Initialize
image_speed = 0;
offscreen_enabled = true;
// state machine
state = 0;
frozen = false;
// physics
hspeed = 3;
facing = 1;
wall_facing = 0;
cliff_facing = 0;
offset_x = (bbox_right-bbox_left)*0.5;
offset_y = (bbox_bottom-y);
// other
speed_cap = 2.5;
acceleration = 0.1;
deceleration = 0.2;
range_x = 75;
range_y = 30;

