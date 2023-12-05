// abort if not actually flying
// abort if cannot damage
if other.invulnerable || other.life < 1 exit;
if !instance_exists(objLevel.player[0]) {
    exit;
}
if !shot exit;
bounce_health = 1;
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

