var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavior
// get camera center
if view_id > -1
{
    var cx = __view_get( e__VW.XView, view_id )+(__view_get( e__VW.WView, view_id )*0.5);
    var cy = __view_get( e__VW.YView, view_id )+(__view_get( e__VW.HView, view_id )*0.5);
}
// wait timer
if wait_timer>0
{
    wait_timer -= 1;
    if not wait_timer {state = 3; remove = 2;}
    
    if wait_timer == 10 {
        state = 4;
    }
}
// shot timer
if shot[shot_number]>0
{
    shot[shot_number] -= 1;
    if not shot[shot_number]
    {
        play_sfx(sndSaucerShoot,4);
        // fire shot
        instance_create(x-4, y+8, objSauceroidFire);
        // animate
        timeline_index = animSaucerFire;
        timeline_position = 0;
        timeline_running = true;
        // get next shot
        if (shot_number<2)
        {
            shot_number += 1;
            shot[shot_number] = 5;
        }
        else
        {
            wait_timer = 25;
        }
    }
}
var camera = instance_nearest(x, y, objCamera);
// handle current state
if camera == noone exit;
switch state
{
case 0: // lock to nearest camera
    
    if in_view(camera.view_id, 32) {view_id = camera.view_id; state = 1;}
    break;
case 1: // approach the camera
    x -= 1;
    y += 1;
    if x<=cx+ox and y>=cy+oy {ox = x-cx; oy = y-cy; state = 2; shot[0] = 60;} 
    break;
case 2: // stick to camera and attack
    x = cx+ox;
    y = cy+oy+cos(objScreen.image_index/16)*2;
    break;
case 3: // move out
    x -= 4;
    y += cos(objScreen.image_index/16)*2;
    break;
}
if in_view(camera.view_id, 32) && !audio_is_playing(sndSaucerHover)
play_sfx(sndSaucerHover,1);

}
