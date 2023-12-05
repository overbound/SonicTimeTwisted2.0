var xran =random(104)-90;
var yran =random(97)-60;
instance_create(x+xran+40,y+yran,objExplosionCluster);
explosionLoop+=1;
if explosionLoop == 15 or explosionLoop == 7 or explosionLoop == 1 
    play_sfx(sndBombExplosion,1);
if explosionLoop > 15 {
    speed = 6;
    direction = 120;
    instance_create(objFireFlyBossController.x-256,objFireFlyBossController.y+64,objMetalSonicFlyOff);
    
    with objFireFlyBossController.block instance_destroy();
    with objLevel.player[0].camera {
        right=objCapsule.x+320;
    }
} else alarm[1]=4;

