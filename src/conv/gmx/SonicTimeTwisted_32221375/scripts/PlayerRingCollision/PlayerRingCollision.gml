/*
void PlayerRingCollision()
*/
var d, a;
if (!onGround) || argument0.alarm[0] != -1 exit;
    rings +=1;
    stop_sound(sndRing);
    play_sfx(sndRing, 0);
    
    with argument0 {
    
        //instance_destroy();
        sprite_index=sprRingSparkle;
        tex = sprite_get_texture(sprite_index, 0);
        image_speed = 0.1;
        alarm[0] = 20;
    
    }
    
    if not (rings mod 100) {
        player_get_lives(1);
    }
    
