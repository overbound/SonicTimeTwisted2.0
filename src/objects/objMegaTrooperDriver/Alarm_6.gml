instance_create(x+10, y+40, objExplosionGroup);
instance_create(x+40, y+10, objExplosionGroup);
with objMegaTrooper {
    state=7;
    alarm[0] = 45;
}
instance_create(x,y,objMegaTrooperMoleDeath);
visible = false;
play_sfx(sndBombExplosion, 1);
