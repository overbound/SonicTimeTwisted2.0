// abort if not actually flying

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


