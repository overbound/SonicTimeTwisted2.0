action_inherited();
reaction_script=player_reaction_knock_ufo;
remove=0;
test =floor(random(2));
if !objProgram.in_past {
    if test == 1 {
    
        x=objFireFlyBossController.x+256;
        hspeed = -4;
    
    } else { 
        x=objFireFlyBossController.x-256;
        hspeed = 4;
    }
    y=objFireFlyBossController.y-256+random(512);
} else {
    if test == 1 {
        y=objFireFlyBossController.y+320;
        vspeed = -4;
    } else { 
        y=objFireFlyBossController.y-320;
        vspeed = 4;
    }
    x=objFireFlyBossController.x-256+random(512);
}


alarm[0]=2000;
play_sfx(sndUFOFly,2);

