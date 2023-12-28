/// @description  Wait for flowers to bloom
if state==1 and not instance_exists(objCapsuleSpark) {
if fake == false
    instance_create(0, 0, objScoreCard); 
    else instance_create(0, 0, objScoreCardFake); 
    state = 0;
}

/// Handle state
if active == 0
{
    player_id = noone;
}
else if active != 0
{
    if (camera_pass == 0)
    {
        set_input_enabled(false);
        player_id.camera.right = min(x + (objScreen.width/2 + 129), room_width);
        player_id.camera.left = max(x - (objScreen.width/2 + 43), 0);
        player_id.camera.top = max(y - (objScreen.height / 2), 0);
        player_id.camera.bottom = max(y + (objScreen.height / 2), room_height);
        camera_pass = 1;
        player_id.landed = false;
    }
    else if (camera_pass == 1 && player_id.x > x + (objScreen.width/2 - 84))
    {
        camera_pass = 2;
    }
    else if (camera_pass == 2)
    {
        __view_set( e__VW.XView, 0, min(x - 84, room_width - objScreen.width) );
    }
    with (player_id)
    {
        var signpost_id = other;
        if !(signpost_id == noone)
        {
            if (signpost_id.x + (objScreen.width/2 - 84) < x)
            {
                computer_input_set_pressed(cLEFT);
            }
            else if (signpost_id.x + (objScreen.width/2 - 84) > x)
            {
                computer_input_set_pressed(cRIGHT);
            }
            if (abs((signpost_id.x + (objScreen.width/2 - 84)) - x) <= 5) && (landed)
            {
                if (abs(xspeed) < 5)
                {
                    x = (signpost_id.x + (objScreen.width/2 - 84));
                    xspeed = 0;
                    computer_input_set_released(cLEFT);
                    computer_input_set_released(cRIGHT);
                    state = player_state_complete;
                    animation_new = "level_end";
                    facing = 1;
                }
            }
        }
    }
 }

