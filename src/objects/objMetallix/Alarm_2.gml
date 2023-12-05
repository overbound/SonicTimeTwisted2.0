var xran =random(200)-100;
var yran =random(40)-30;
instance_create(x+xran+40,y+yran,objExplosionCluster);
if explosionLoop == 1 or explosionLoop == 8 or explosionLoop == 16 or explosionLoop == 24
    play_sfx(sndBombExplosion, 1);
if explosionLoop > 25 {
    alarm[3]=4;
    if objProgram.in_past == false {
        with objLevel.player[0] state = player_state_standby;
    }
        with objLevel started = false;
} else {
    alarm[2]=5;
    explosionLoop++;
}

