action_inherited();
/// Emitter values
remove = 1;
reaction_script = player_reaction_ss_magnet;
// state machine
enabled = false;
// physics
x_force = 0.25;
y_force = -0.12;
x_offset = sprite_width * 0.5;
y_offset = sprite_height - 4;
x_range = sprite_width;
y_range = 0;
angle_offset = 270;
angle_range = 18;
velocity = 1;
start=false;
x+=64;
left=64;
right=0;

image_alpha = .45;
alarm[0]=10;

