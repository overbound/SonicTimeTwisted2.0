action_inherited();
groundz=12;
z=300;
chime_played = false;
image_speed = 0;
if objProgram.in_past == false {
    image_index = objProgram.special_future_current_level;
} else {
    image_index = objProgram.special_past_current_level;
    sprite_index = sprSSStone;
}
// to avoid an enemy showing up during the tally, delete all of them now
with(objSSEnemy)
{
    instance_destroy();
}

