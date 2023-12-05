/// @description  Handle state
if active == 0
{
    player_id = noone;
}
else if active != 0
{
    if (camera_pass == 0)
    {
        set_input_enabled(false);
        player_id.camera.right = min(x + 426 - 84, room_width);
        player_id.camera.left = max(x - 256, 0);
        player_id.camera.top = max(y - 120, 0);
        player_id.camera.bottom = max(y + 120, room_height);
        camera_pass = 1;
        player_id.landed = false;
    }
    else if (camera_pass == 1 && player_id.x > x + 129)
    {
        camera_pass = 2;
    }
    else if (camera_pass == 2)
    {
        __view_set( e__VW.XView, 0, min(x - 84, room_width - 426) );
    }
    with (player_id)
    {
        var signpost_id = instance_nearest(x, y, objSignPost);
        if !(signpost_id == noone)
        {
            if (signpost_id.x + 129 < x)
            {
                computer_input_set_pressed(cLEFT);
            }
            else if (signpost_id.x + 129 > x)
            {
                computer_input_set_pressed(cRIGHT);
            }
            if (abs((signpost_id.x + 129) - x) <= 5) && (landed)
            {
                if (abs(xspeed) < 5)
                {
                    x = (signpost_id.x + 129);
                    xspeed = 0;
                    computer_input_set_released(cLEFT);
                    computer_input_set_released(cRIGHT);
                    state = player_state_complete;
                    animation_new = "level_end";
                    facing = 1;
                    __view_set( e__VW.XView, 0, x-213 );
                    __view_set( e__VW.YView, 0, y-120 );
                    other.active = false;
                }
            }
        }
    }
    /* PREVIOUS METHOD
    if x < other.x+128 && other.active == 1
    {
        view_xview+=2;
        x+=2;
        // animate
         animation_new = "walk";
         timeline_speed = 0.25;
         image_angle = 0;
         }
         else
         {
             x=other.x+129;
             if other.active==1
             {
                other.active=-1;
                view_xview = x-213
                view_yview = y-120
             }
    
             // animate
            animation_new = "level_end";
            timeline_speed = 0.25;
            image_angle = 0;
            xspeed = 0;
            other.active = false;
            other.reaction_script=noone;
            }
        }
    }*/  
}

/* */
/*  */
