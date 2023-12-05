// player_reaction_boarding(local_id, code)
// check collision code
if (argument1!=2) return false;
var nnull = argument0;
// ignore if already sliding
if state==player_state_boarding return false;
// animate
animation_new = "boarding";
timeline_speed = 1;
// states and flags
state = player_state_boarding;
spinning = false;
jumping = false;
rolling_jump = false;
jump_action = false;
spindashing = false;
boarding = true;
// movement and collision
//if (sign(xspeed)!=sign(argument0.slide)) xspeed = 0;
// counters
chain_multiplier = 0;
// camera
camera.ground_mode = true;
// hard collision found
return true;
