// player_is_board_falling()
var ground_speed;
// animate
animation_new = "boarding";
timeline_speed = 1;
image_angle = 0;
image_index = 1;
// states and flags
state = player_state_fall;
spinning = true;
jumping = true;
jump_action = false;
spindashing = false;
// movement and collision
yspeed = -sine[relative_angle]*xspeed;
xspeed = cosine[relative_angle]*xspeed;
// movement and collision
//ground_speed = xspeed;
//xspeed = (cosine[relative_angle]*ground_speed)-(sine[relative_angle]*jump_constant);
//yspeed = -(sine[relative_angle]*ground_speed)-(cosine[relative_angle]*jump_constant);
// set air state
player_in_air();
// sound
//play_sfx(sndJump, 0);
