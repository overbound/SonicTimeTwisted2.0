/// @description  Fire laser
boss.firing = true;
with instance_create(boss.x, boss.y, objAA1BossLaser) {parent_id = other.boss; pattern = 2; image_xscale = 0.03;}

