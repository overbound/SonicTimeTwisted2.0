/// @description  Destroy enemy if flying

// abort if not actually flying
if player_id.state!=player_state_fly or player_id.underwater exit;
if sprite_index!=sprTailsEffect4 exit;

// abort if cannot damage
if other.invulnerable exit;

// scoring
var bonus_score;
if player_id.chain_multiplier>15 bonus_score = 10000; else
if player_id.chain_multiplier>3 bonus_score = 1000; else
if player_id.chain_multiplier>2 bonus_score = 500; else
if player_id.chain_multiplier>1 bonus_score = 200; else
bonus_score = 100;
player_add_score(bonus_score);
with instance_create(other.x, other.y, objScorePopup)
{
    if other.player_id.chain_multiplier>1 image_index = 2; else
    image_index = 1;
}

// destroy enemy
with other instance_destroy();

// sound
play_sfx(sndPop, 0);

