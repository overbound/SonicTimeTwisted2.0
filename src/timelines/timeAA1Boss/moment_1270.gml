/// @description  Fire laser
boss.firing = true;
with instance_create(boss.x, boss.y, objAA1BossLaser) {parent_id = other.boss; direction = 245;}

