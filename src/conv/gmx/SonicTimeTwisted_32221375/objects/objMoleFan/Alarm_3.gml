play_sfx(sndBombExplosion,1);
instance_create(x+8,y+42,objExplosionGroupNoSound);
instance_create(x+64,y+8,objExplosionGroupNoSound);
instance_create(x-12,y+62,objExplosionGroupNoSound);
instance_create(x,y,objExplosionGroupNoSound);
instance_create(x-2,y-44,objExplosionGroupNoSound);
instance_create(x+64,y-6,objExplosionGroupNoSound);
instance_destroy();

