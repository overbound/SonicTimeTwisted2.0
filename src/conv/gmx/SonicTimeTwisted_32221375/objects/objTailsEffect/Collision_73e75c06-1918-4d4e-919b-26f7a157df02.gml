// abort if not actually flying
if player_id.state!=player_state_fly or player_id.underwater exit;
if sprite_index!=sprTailsEffect4 exit;

// abort if cannot damage
if other.invulnerable exit;

with other {
    if life>0 && alarm[0] == -1
    {
        life -= 1;
        invulnerable=true;
        
        if life<=0 
        
            //visible = false;
            reaction_script = -1;
            timeline_index = animExplosionCluster;
            timeline_speed = 1;
            player_add_score(500);
            timeline_running=true;
    
         }else alarm[0] = 15;
    }

// sound
play_sfx(sndBossHit, 2);


