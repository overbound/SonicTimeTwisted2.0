var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavior
var offset = 0;
// check x distance fromm player
with instance_nearest(x, y, objPlayer) offset = x - other.x;
// turn around if too far
if abs(offset) > 96 and (image_xscale != sign(offset)) and (turning == 0)
{
    turning = -sign(hspeed);
    image_index = 5;
    timeline_running = false;
    alarm[0] = 6;
}
// reverse speed on turning
if (turning != 0)
{
    hspeed += 0.25 * turning;
    if (abs(hspeed) >= max_speed) and (sign(hspeed) == turning) {hspeed = max_speed * turning; turning = 0;}
}
if sprite_index == sprWhalebotPast && objLevel.started == true{
    
    if !audio_is_playing(sndPropeller)
    play_sfx(sndPropeller,4);
    
    }
    

}
