// abort if not actually flying
if player_id.state!=player_state_fly or player_id.underwater exit;
if sprite_index!=sprTailsEffect4 exit;
if other.reaction_script == noone exit;

// abort if cannot damage
if other.invulnerable exit;

if not audio_is_playing(sndBossHit)
    play_sfx(sndBossHit,1);

with other {
if alarm[0] == -1 {
        // hit boss
        alarm[0] = 30;
        if life>0
        {
            life -= 1;
            if life<=0 
            event_user(0);
        }
    }
}

