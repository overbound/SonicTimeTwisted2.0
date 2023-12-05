/// @description  Handle player
for (var i = 0; i < 2; i += 1)
{
    // ignore if not attached
    if player_id[i] < 0 continue;
    // orbit around orb
    z_pos[i] = (z_pos[i] + rotation_speed) mod 360;
    z_depth[i] = -sine[(z_pos[i] + 90) mod 360];
    // set position
    player_id[i].x = x + offset * (cosine[angle[i]] * sine[z_pos[i]]);
    player_id[i].y = y - offset * (sine[angle[i]] * sine[z_pos[i]]);
    // jumping
    if input_check_pressed(cACTION)
    {
        // prevent player from re-attaching
        alarm[i] = 32;
        // movement and collision
        player_id[i].xspeed = -force * (cosine[angle[i]] * z_depth[i]);
        player_id[i].yspeed = force * (sine[angle[i]] * z_depth[i]);
        // states and flags
        player_id[i].state = player_state_fall;
        player_id[i].state_reset = true;
        // other
        player_id[i].depth = 0;
        stop_sound(player_id[i].reserved_sound);
        // done
        player_id[i] = noone;
        continue;
    }
    // adjust direction
    var keySpd = 2;
    if object_index = objFFOrbLarge
        keySpd = 1;
        
    if input_check(cLEFT) {angle[i] = (angle[i] + keySpd) mod 360;}
    if input_check(cRIGHT) {angle[i] = angle_wrap(angle[i] - keySpd);}
    // set depth
    player_id[i].depth = -sign(z_depth[i]);
    // sound
    if not audio_is_playing(player_id[i].reserved_sound) player_id[i].reserved_sound = play_sfx(sndOrbs, 4);
}

/// Handle flashing
event_user(step_event);

