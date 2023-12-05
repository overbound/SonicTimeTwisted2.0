// abort if not actually flying
if player_id.state!=player_state_fly or player_id.underwater exit;
if sprite_index!=sprTailsEffect4 exit;

with other {
    if reaction_script == player_reaction_golem_hand_target  && image_alpha != 1
            hit = sign(other.player_id.xspeed);
            if (hit == 0) 
                hit = other.player_id.facing;
}

