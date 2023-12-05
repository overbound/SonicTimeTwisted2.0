/// @description  Set Eggwalker Destroyed
with objEggWalker {
    destroyed=true;
    alarm[0] = 0;
    
}
with objEggWalkerBossController { state = 3; }

alarm_set(6, 40);
alarm_set(7, 70);
alarm_set(8, 100);
alarm_set(9, 130);
alarm_set(10, 160);
alarm_set(11, 190);
timeline_index = animBossExplosion;
timeline_position = 0;
timeline_running = 1;
timeline_loop = 0;

visible = true;
reaction_script = -1;
