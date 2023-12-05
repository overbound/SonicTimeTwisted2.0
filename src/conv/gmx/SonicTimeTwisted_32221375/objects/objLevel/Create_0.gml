/// @description  Initialize level
image_speed = 0;
// timing
timer = 0;
timer_enabled = false;
stage_timer_active = false;
reseting = 0;
// state
started = false;
cleared = false;
// players
player[0] = noone;
player[1] = noone;
// other
total_rings = instance_number(objRing);
// custom data
act = 1;
flower = sprExampleFlower;
spawn_id = noone;
ringLifeCounter = 0; 

