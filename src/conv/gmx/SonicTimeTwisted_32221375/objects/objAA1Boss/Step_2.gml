/// @description  State machine
switch state
{
case 0: // just floating
    y = ystart+cos(offset)*4;
    offset += 0.0625;
    image_index = 0;
    break;
case 1: // laughing
    if !audio_is_playing(sndMetalLaugh) && life > 0
        play_sfx(sndMetalLaugh, 1);
    y = ystart+cos(offset)*4;
    offset += 0.25;
    image_index = 2;
    break;
case 2: // almost done
    image_index = 0;
    if place_meeting(x, y, objSolid)
    {
        // states and flags
        reaction_script = -1;
        remove = 2;
        state = 4;
        // movement
        gravity = 0.21875;
        hspeed = -4;
        // animate
        sprite_index = sprMetalCrash;
        image_index = 0;
        image_speed = 0.25;
        // audio
        play_sfx(sndBossHit, 1);
    }
    break;
case 3: // ending
    if (image_index==1) image_speed = 0;
    image_angle += 32;
    break;
}
if life<=0 event_user(0);

