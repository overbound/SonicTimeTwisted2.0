/// @description Hit enemy if spinning or flying, or get hit by one
// CPU Tails can destroy enemies while spinning (jump follow) or flying (catch-up)
if not (spinning or fly_mode) {
    // Tails gets hit — flash without losing rings or dying
    if not invulnerable {
        invulnerable = 120;
        play_sfx(sndHurt, 0);
    }
    exit;
}
if other.invulnerable exit;

// scoring
var bonus_score;
if chain_multiplier > 15 bonus_score = 10000; else
if chain_multiplier > 3  bonus_score = 1000;  else
if chain_multiplier > 2  bonus_score = 500;   else
if chain_multiplier > 1  bonus_score = 200;   else
bonus_score = 100;
player_add_score(bonus_score);

with instance_create(other.x, other.y, objScorePopup) {
    image_index = 1;
}

// destroy enemy
with other instance_destroy();

// sound
play_sfx(sndPop, 1);