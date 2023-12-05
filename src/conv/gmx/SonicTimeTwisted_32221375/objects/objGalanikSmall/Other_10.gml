/// @description  Fire
firingCount++;
timeline_position = 0;
timeline_running = true;
var target = noone;
with (objLevel.player[0])
{
    if (terrain_id != noone)
    {
        target = terrain_id;
    }
    else
    {
        target = instance_nearest(x, y, objBossPlatform);
    }
}
if (instance_exists(fireball))
{
    instance_destroy(fireball);
}
fireball = instance_create(x, y, objGalanikFireball);
fireball.platformId = target;
play_sfx(sndGalacnikAttack, 2);
state = "waiting";

