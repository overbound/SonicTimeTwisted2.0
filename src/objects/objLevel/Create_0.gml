/// @description  Initialize level
image_speed = 0;
// fresh level entry (not a time travel arrival): allow chrono travel again
if objProgram.time_traveling == 0 objProgram.boss_mode = false;
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

