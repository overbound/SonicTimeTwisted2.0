/// @description  Attack
switch (state)
{
case "entering":
    if (instance_exists(objLevel.player[0]))
    {
        if (image_xscale > zPosition or image_yscale > zPosition)
        {
            image_xscale = max(image_xscale - zSpeed, zPosition);
            image_yscale = max(image_yscale - zSpeed, zPosition);
        }
        y -= ySpeed;
        var cameraCentre = camera_get_view_y(view_camera[0]) + (objScreen.height * 0.5);
        if (y <= cameraCentre)
        {
            y = cameraCentre;
            event_user(0);
        }
    }
    break;

case "waiting":
    y = camera_get_view_y(view_camera[0]) + (objScreen.height * 0.5);
    break;

case "exiting":
    if (instance_exists(objLevel.player[0]))
    {
        if (image_xscale < 1 or image_yscale < 1)
        {
            image_xscale = min(image_xscale + zSpeed, 1);
            image_yscale = min(image_yscale + zSpeed, 1);
        }
        y += ySpeed;
        if (y >= camera_get_view_y(view_camera[0]) + objScreen.height + 6)
        {
            with (objGalanik)
            {
                play_sfx(sndQuake, 10);
                state = 5;
            }
            instance_destroy();
        }
    }
    break;
}

