action_inherited();
/// Initialize
image_speed = 0;
offscreen_enabled = true;
// state machine
state = 0;
timer = 0;
frozen=false
// physics
facing = 1;
wall_facing = 0;
cliff_facing = 0;
offset_x = (bbox_right - bbox_left) * 0.5;
offset_y = (bbox_bottom - y);
// other
speed_cap = 1.5;
acceleration = 0.02;
stopped = false;
x_origin = x;
arm_angle = 0;
arm_timer = 0;
gun_angle = degtorad(270);
offset_x = 5;
offset_y = sprite_height-sprite_get_yoffset(sprite_index);
hand_point_x = x - facing * 10 + facing * 16 * cos(arm_angle);
hand_point_y = y - 1 + 16 * sin(arm_angle);
damage_point_x = x;
damage_point_y = y;
target = noone;
store_speed = hspeed;
store_facing = facing;

