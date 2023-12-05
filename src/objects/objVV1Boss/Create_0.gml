action_inherited();
/// Initialize
image_speed = 0;
image_xscale = -1;
life = 6;
// state machine
state = 0;
attack_state = 0;
offset = 0;
// handles
shield = noone;
target = noone;
target2 = noone;
explosion = noone;
offset=0;

action_path(pathVV1BossToNeutral, 4, 0, 1);
action_set_alarm(120, 1);
