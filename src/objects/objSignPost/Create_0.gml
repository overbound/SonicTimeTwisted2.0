action_inherited();
image_speed = 0;
reaction_script = player_reaction_sign_post;
passed = 0;
character_id = -1;
offset = 0;
/// Create sparkle offsets
ox[0] = -24;
oy[0] = -16;
ox[1] = 8;
oy[1] = 8;
ox[2] = -16;
oy[2] = 0;
ox[3] = 24;
oy[3] = -8;
ox[4] = 0;
oy[4] = -8;
ox[5] = 16;
oy[5] = 0;
ox[6] = -24;
oy[6] = 8;
ox[7] = 24;
oy[7] = 16;

///state control for sign
active=false;
player_id = noone;

action_move_point(0, 0, 0);
camera_pass = false;

