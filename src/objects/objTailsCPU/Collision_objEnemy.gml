/// @description Object collision only — no terrain collision in follow mode
// Tails destroys enemies when leader was spinning at this buffer position
// Gets hurt (tails_hurt = 30 flash) when leader was not spinning
if not spinning {
    if not invulnerable {
        invulnerable = 120;
        tails_hurt = 30;
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

with other instance_destroy();
play_sfx(sndPop, 1);