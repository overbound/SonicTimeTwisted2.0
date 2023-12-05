// abort if cannot damage
if other.invulnerable exit;
if !shot exit;
if !instance_exists(objLevel.player[0]) {
    exit;
}
bounce_health = 1;

with other {
    if life>0 && alarm[0] == -1
    {
        life -= 1;
        invulnerable=true;
        
        if life<=0 {
        
           instance_create(x,y,objExplosionGroup)
           instance_create(x+24,y+10,objExplosionGroup)
           instance_create(x-12,y+32,objExplosionGroup)
           instance_create(x,y,objExplosionGroup)
           instance_create(x-32,y-64,objExplosionGroup)
           instance_create(x+24,y-24,objExplosionGroup)
           alarm[2]=8;
           reaction_script=noone;
           player_add_score(500);
           
         } else alarm[0]=15;
    }
    
    // sound
    play_sfx(sndBossHit, 1);
}

