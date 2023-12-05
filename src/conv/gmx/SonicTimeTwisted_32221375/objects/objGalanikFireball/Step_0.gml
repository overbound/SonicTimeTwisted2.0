/// @description  Chase
switch (state)
{
case "chasing":
    if (instance_exists(platformId))
    {
        move_towards_point(platformId.x + (platformId.sprite_width * 0.5), platformId.y, xySpeed);
    }
    if (image_index >= 4)
    {
        image_xscale = min(image_xscale + zSpeed, zPosition);
        image_yscale = min(image_yscale + zSpeed, zPosition);
    }
    if (image_xscale >= 1.5 and 
        (instance_position(x, y, platformId) or not instance_exists(platformId)))
    {
        timeline_index = animGalanikFireballFade;
        timeline_position = 0;
        timeline_running = true;
        remove = 2;
        with (platformId)
        {
            event_user(0);
        }
        with (objGalanikSmall)
        {
            if (firingCount <= 5)
            {
                alarm[0] = 65;
            }
        }
        state = "";
    }
    break;

case "fading":
    image_alpha -= fadeRate;
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
    break;
}

