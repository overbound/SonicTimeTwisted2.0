xorgin = 2048;
yorgin = 192;
timeline_index=timeFinalBossObstacleGenerator;
timeline_running=true;
timeline_loop=true;
state=0;
// block chrono time travel for the rest of this level
objProgram.boss_mode = true;
instance_create(x,y,objFinalBossPathControl);

