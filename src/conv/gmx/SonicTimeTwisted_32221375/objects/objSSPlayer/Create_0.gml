action_inherited();
with (other) {
instance_create(x,y,objSSCamera);
rings=0;
move_direction = 90;
move_speed = 0;
bounce_timer = 0;
radius = 24;
z = 24;//32
zground = z;
zspeed = 0;
onGround = true;
max_radius = 24;
bump_radius = max_radius;
jumping = false;
xaxis = 0;
yaxis = 0;
gravity_force=0.21875;
jump_force =4;
jump_release=false;
noTrack=0;
hit = false;
started = false;
closing = false;
progress = 0;
// kill states: 1 death by ring, 2 death by fallout, 3 death by loss
kill=0;
invincible=0;
landing_tracker = instance_create(x, y, objSSPlayerLandingTracker);
// set an alarm to make sure region activations aren't on every single step
alarm[1] = 1;
max_move_speed = 8;
direction_multiplier = -1.5;
cannot_accelerate = true;
decel = 0.1;
analog_current_yaxis = 0;

}
