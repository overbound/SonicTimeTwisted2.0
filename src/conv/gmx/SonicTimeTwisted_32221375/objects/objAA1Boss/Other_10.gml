/// @description  Boss defeated
// stop boss routine
with objAA1BossController timeline_running = false;
// only continue if we're not firing
if state==0 /*and not (firing)*/
{    
    // stop background auto-scrolling
    with objAA1BossFloorBack speed = 0;
    
    // stop moving platforms
    objAA1BossController.plat[0].hspeed = 0;
    objAA1BossController.plat[0].remove = 2;
    objAA1BossController.plat[1].hspeed = 0;
    objAA1BossController.plat[1].remove = 2;
    objAA1BossController.state=1;
    // move boss forward
    hspeed = 6;
    vspeed = 3;
    state = 2;
    // start moving camera
}


/* */
/*  */
