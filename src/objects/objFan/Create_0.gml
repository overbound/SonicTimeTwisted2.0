action_inherited();
/// Emitter values
image_speed = 0;
remove = 1;
reaction_script = player_reaction_fan;
// state machine
enabled = false;
// physics
x_force = 0.25;
y_force = -0.25;
x_offset = sprite_width * 0.5;
y_offset = sprite_height - 4;
x_range = sprite_width;
y_range = 0;
angle_offset = 270;
angle_range = 18;
velocity = 7;
// timing
ticks = 1;
interval = 25;
emit=false;

