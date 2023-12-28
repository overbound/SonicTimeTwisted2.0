/// @description  Handle player
with player_id
{
    // state machine
    switch other.state
    {
    case 0: // warping out
        image_xscale -= 0.04;
        image_yscale -= 0.04;
        // if we're small enough
        if image_xscale<=0.02
        {
            // set new coordinates
            x = other.xx;
            y = other.yy;
            camera.x = x;
            camera.y = y;
            // update camera position
            __view_set( e__VW.XView, camera.view_id, clamp(x-objScreen.width*0.5, camera.left, camera.right-objScreen.width) );
            __view_set( e__VW.YView, camera.view_id, clamp(y-objScreen.height*0.5, camera.top, camera.bottom-objScreen.height) );
            // sound
            play_sfx(sndWarpOut, 0);
        
            // warp out
            other.state = 1;
        }
        break;
    case 1: // warping in
        image_xscale += 0.04;
        image_yscale += 0.04;
        // if we're back to normal
        if image_xscale>=1
        {
            // normalize scale
            image_xscale = 1;
            image_yscale = 1;
            // animate
            animation_new = "spin";
            timeline_speed = 0.2;
            image_angle = 0;
            // we're inevitably next to another warp; set the alarm so we don't collide again
            with instance_position(x, y, objWarp) alarm[0] = 64;
            // fall from warp
            player_is_falling();
            xspeed = 0;
            yspeed = 3;
            // detach
            other.player_id = noone;
            other.state = 0;
            other.remove = 1;
        }
        break;
    }
}

