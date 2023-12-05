action_inherited();
/// Initialize
image_speed = 0;
offscreen_enabled = true;
// state machine
state = 0;
timer = 0;
// physics
facing = 1;
wall_facing = 0;
cliff_facing = 0;
offset_x = (bbox_right-bbox_left)*0.5;
offset_y = (bbox_bottom-y);
// yoyo
yoyo = instance_create(x, y, objMoleYoyoYoyo);
// other
speed_cap = 1.5;
acceleration = 0.02;
stopped = false;
x_origin = x;
arm_angle = 0
line_point_x = x;
line_point_y = y-1;
yoyo_angle = 0
yoyo_length = 0
yoyo_timer = pi;
frozen=false;
store_speed = hspeed;
store_facing = facing;
// animation
line_color = make_color_rgb(200, 214, 225);

