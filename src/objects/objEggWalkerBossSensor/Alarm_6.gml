instance_create(x+40, y+10, objExplosionGroup);
play_sfx(sndBombExplosion, 1);
with objEggWalkerGun {
    instance_destroy();
    
    }
    
with objEggWalkerGunCover {
    instance_create(x,y,objExplosionGroup)
    instance_destroy();
    
}
with objEggWalkerLaser {
    instance_destroy();
    
    }
instance_create(x,y+10,objEggWalkerMoleDeath);
image_index=1;
