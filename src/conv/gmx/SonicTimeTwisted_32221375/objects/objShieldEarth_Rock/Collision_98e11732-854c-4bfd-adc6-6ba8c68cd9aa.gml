/// @description  Destroy enemy if flying
// abort if cannot damage
if other.invulnerable exit;
if !shot exit;
if !instance_exists(objLevel.player[0]) {
    exit;
}
bounce_health = 1;
// scoring
var bonus_score;
if objLevel.player[0].chain_multiplier>15 bonus_score = 10000; else
if objLevel.player[0].chain_multiplier>3 bonus_score = 1000; else
if objLevel.player[0].chain_multiplier>2 bonus_score = 500; else
if objLevel.player[0].chain_multiplier>1 bonus_score = 200; else
bonus_score = 100;
player_add_score(bonus_score);
with instance_create(other.x, other.y, objScorePopup)
{
    if objLevel.player[0].chain_multiplier>1 image_index = 2; else
    image_index = 1;
}
// destroy enemy
with other instance_destroy();
// sound
play_sfx(sndPop, 0);

