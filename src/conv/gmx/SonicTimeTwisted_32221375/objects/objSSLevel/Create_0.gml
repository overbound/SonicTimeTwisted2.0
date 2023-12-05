hud=instance_create(x,y,objSSHud);
messages=instance_create(x,y,objSSMessages);
total_rings = instance_number(objSSRing);
timer_enabled = true;
timer = 36000;
started = false;
loopMusic = false;
cleared = false;
if (!global.special_level_music_played) {
    set_zone_music(room);
}

