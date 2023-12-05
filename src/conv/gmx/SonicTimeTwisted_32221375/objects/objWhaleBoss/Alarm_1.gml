var xran =random(200)-100;
var yran =random(60)-20;
instance_create(x+xran+40,y+yran,objExplosionCluster);
if explosionLoop == 1 or explosionLoop == 8 or explosionLoop == 16 or explosionLoop == 24
    play_sfx(sndBombExplosion,1);
if explosionLoop > 24 {
    alarm[2]=4;
} else {
    alarm[0]=5;
    explosionLoop++;
}
if explosionLoop== 8 {
    gravity=.25;
    
    with jaw {
    
        direction=105;
        speed=6;
        gravity=.25;
        destroyed=true;
    
    }
}

