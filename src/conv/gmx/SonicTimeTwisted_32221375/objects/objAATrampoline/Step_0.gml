/// @description  Handle state
if not active
{
    // normalize height
    if (height>0)
    {
        // slowly return to neutral
        height = max(height-0.4, 0);
        // wind down
        angle = (angle+45) mod 360;
        oy = bbox_top+cosine[angle]*height;
        // reset collision point
        if height==0 ox = bbox_left;
    }
}
else
{
    // control player
    with player_id
    {
        // horizontal motion
        if (floor(x)-offset_x<other.bbox_left) xspeed = (other.bbox_left-(floor(x)-offset_x))*0.2; else
        if (floor(x)+offset_x>other.bbox_right) xspeed = (other.bbox_right-(floor(x)+offset_x))*0.2; else
        xspeed = 0;
        // slow descent
        yspeed *= 0.8;
        // apply movement
        x += xspeed;
        y += yspeed;
        // update offsets
        other.ox = x;
        other.oy = floor(y)+offset_y;
        // launch from trampoline
        if (yspeed<0.1)
        {
            // lift trampoline line
            other.active = false;
            other.height = 16;
            other.angle = 0;
            other.player_id = noone;
            // animate
            timeline_speed = 1;
            // states and flags
            state = player_state_fall;
            // movement and collision
            xspeed = other.force_x;
            yspeed = other.force_y; 
            // sound
            play_sfx(sndAATrampoline, 1);
        }
    }
}

