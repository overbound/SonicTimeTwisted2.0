script_execute(PlayerHarmfulCollision,other,0,0,0,0);
play_sfx(sndBombExplosion,1);

with other {
    instance_create(x,y,obj3DExplosion);
    instance_destroy();
}
 




