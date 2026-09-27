/// @description Hit boss if spinning or flying, or get hit by one
// CPU Tails can damage bosses while spinning (jump follow) or flying (catch-up)
if not (spinning or fly_mode) {
    // Boss contact — flash without losing rings or dying
    if not invulnerable {
        invulnerable = 120;
        play_sfx(sndHurt, 0);
    }
    exit;
}
if other.invulnerable exit;
if other.reaction_script == noone exit;

// Only hit once per boss alarm cycle
if other.alarm[0] != -1 exit;

if not audio_is_playing(sndBossHit)
    play_sfx(sndBossHit, 1);

with other {
    alarm[0] = 30;
    if life > 0 {
        life -= 1;
        if life <= 0
            event_user(0);
    }
}