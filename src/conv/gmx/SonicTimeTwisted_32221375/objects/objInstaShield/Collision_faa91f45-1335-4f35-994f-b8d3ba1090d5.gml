// abort if cannot damage
if other.invulnerable exit;
if !instance_exists(objLevel.player[0]) {
    exit;
}
bounce_health = 1;
with other {
if alarm[0] == -1 {
        // hit boss
        alarm[0] = 30;
        play_sfx(sndBossHit, 2);
        play_sfx(sndGalanikHit, 1);
        state = 4;
        if life>0
        {
            life -= 1;
            if life<=0 
            event_user(0);
            play_sfx(sndGalanikKnockBack,2);
            event_user(0);
        }
    }
    with parentId {
            flash = true;
            alarm[11] = 30;
        }
}

