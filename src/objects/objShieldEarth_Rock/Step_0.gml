if (shot)
{
    if (x < __view_get( e__VW.XView, 0 ) - 128) ||
       (y < __view_get( e__VW.YView, 0 ) - 128) ||
       (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 128) ||
       (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 128)
    {
        if shield == noone instance_destroy();
        shot = false;
        broken = true;
        broken_value = broken_value_max;
        broken_offset = 0;
        penalty_shot = true;
        penalty_timer = penalty_timer_max;
        hspeed = 0;
        vspeed = 0;
    }
    if (bounce_health > 0)
    {
        if (vspeed > 0 && collision_line(x - 10, y + 10, x + 10, y + 10, objSolid, true, true))
        {
            vspeed = -4.5;
            stop_sound(sndSmash);
            play_sfx(sndSmash);
        }
        else if (vspeed < 0 && collision_line(x - 10, y - 10, x + 10, y - 10, objSolid, true, true))
        {
            vspeed = 1;
            stop_sound(sndSmash);
            play_sfx(sndSmash);
        }
        if (hspeed > 0 && collision_line(x + 8, y - 10, x + 8, y + 5, objSolid, true, true))
        {
            bounce_health--;
            hspeed *= -0.7;
            stop_sound(sndSmash);
            play_sfx(sndSmash);
        }
        else if (hspeed < 0 && collision_line(x - 8, y - 10, x - 8, y + 5, objSolid, true, true))
        {
            bounce_health--;
            hspeed *= -0.7;
            stop_sound(sndSmash);
            play_sfx(sndSmash);
        }
    }
    else
    {
        hspeed = clamp(hspeed, -1, 1);
        
    }
    
    image_angle +=15;
}
if (penalty_shot)
{
    penalty_timer--;
    if (penalty_timer == 0)
    {
        penalty_shot = false;
    }
    else exit;
}
if (broken)
{
    broken_value--;
    if (broken_offset < 60)
    {
        broken_offset++;
    }
    if (broken_value) == 0
    {
        broken = false;
        bounce_health = 3;
    }
}

