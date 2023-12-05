action_inherited();
state = 0;
walkerId=noone;
laserAngle=0;
remove=0;
angleCanon =0;
laser=instance_create(x-32,y,objEggWalkerLaser);
with laser {
    gunId=other.id;
    depth = other.depth-1;
}
coverId=instance_create(x,y,objEggWalkerGunCover);

