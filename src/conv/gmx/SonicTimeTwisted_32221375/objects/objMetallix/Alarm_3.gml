var xran =random(200)-100;
var yran =random(60)-20;
instance_create(x+xran+40,y+yran,objExplosionCluster);
play_sfx(sndBombExplosion, 1);
with objMetallixPlatform {
    instance_destroy();
}
with objMetallixController state = 4;


