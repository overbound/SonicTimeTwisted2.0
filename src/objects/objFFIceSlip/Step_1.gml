/// @description  Ice slip behavior
switch state
{
case 1: // contracting
    x += 2 * sign(image_xscale);
    if abs(x - xstart) > 256 {state = 0; alarm[0] = 60;}
    break;
case 2: // expanding
    x -= 2 * sign(image_xscale);
    if (x == xstart) {state = 0; remove = 1;} 
    break;
}
// sound
if not audio_is_playing(sndIceSlip) and state > 0
{
    play_sfx(sndIceSlip, 4);
}

