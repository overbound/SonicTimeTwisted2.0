// abort if cannot damage
if other.hit exit;
if !shot exit;
if !instance_exists(objLevel.player[0]) {
    exit;
}
bounce_health = 1;
with other {
    if reaction_script == player_reaction_golem_hand_target  && image_alpha != 1 
            hit = sign(x-other.x);
                
}

