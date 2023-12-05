/// @description  Set Eggwalker Destroyed
with objEggWalker {
    destroyed=true;
    alarm[0] = 0;
    
}
with objEggWalkerBossController { state = 3; }

action_set_alarm(40, 6);
action_set_alarm(70, 7);
action_set_alarm(100, 8);
action_set_alarm(130, 9);
action_set_alarm(160, 10);
action_set_alarm(190, 11);
action_timeline_set(animBossExplosion, 0, 0, 0);
visible = true;
reaction_script = -1;
