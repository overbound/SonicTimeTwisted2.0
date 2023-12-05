action_inherited();
/// Initialize
image_speed = 0;
remove = 1;
reaction_script = player_reaction_FF_lift;
// state machine
state = 0;
// physics
lift_position = 0;
lift_click_position = 0;
lift_max_position = 660;
lift_speed = 0;
lift_max_speed = 14;
lift_facing = 1;
tracking_speed = 0; // tracks the players speed as it runs along the floor

