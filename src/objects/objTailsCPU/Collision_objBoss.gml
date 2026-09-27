/// @description Boss collision — object only, no terrain
if not spinning {
    if not invulnerable {
        invulnerable = 120;
        tails_hurt = 30;
        play_sfx(sndHurt, 0);
    }
    exit;
}
if other.invulnerable exit;
if other.reaction_script == noone exit;
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