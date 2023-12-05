action_set_relative(1);
action_create_object(objExplosionGroup, 10, 40);
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

action_set_relative(0);
