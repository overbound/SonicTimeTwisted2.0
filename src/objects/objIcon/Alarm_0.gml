/// @description  Redeem powerup
// cut speed
vspeed = 0;
// get player id
with player_id
{
    // abort if dead
    if (state==player_state_dead) break;
    // get item type
    switch other.image_index
    {
        case 1: if not superform player_hit(0, sndHurt); break;
        case 2: player_get_rings(10); break;
        case 3: if not superform {
            superspeed = 1200; player_reset_physics(); 
           // stop_level_music();
            play_jingle(bgmSpeedUp, true); 
            } break;
        case 4: case 5: case 6: case 7: case 8: case 9: player_get_shield(other.image_index-4); break;
        case 10: if not superform player_get_invincibility(); break;
        default: player_get_lives(1);
    }
}
// done
player_id = noone;
alarm[1] = 32;

