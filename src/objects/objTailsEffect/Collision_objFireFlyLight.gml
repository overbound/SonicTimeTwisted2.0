/// @description  player_reaction_fire_fly_light(local_id)
/// @param local_id
var bonus_score;

// ignore if already hit
if other.alarm[0] exit;

// hit boss
other.alarm[0] = 30;
objFireFly.graphic.alarm[2] = 30;
if other.life>0
{
    other.life -= 1;
    if other.life<=0 {
        with other event_user(0);
        objFireFly.graphic.image_index = 1;
    }
}

// sound
play_sfx(sndBossHit, 0);


