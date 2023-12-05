draw += 1;
alarm[0] = 80;
switch(draw)
{
    case 1:
        with(voice)
        {
            translation_key = "_metal_sonic_voice_Stop";
            event_user(0);
        }
        break;
    case 2:
        with(voice)
        {
            translation_key = "_metal_sonic_voice_No_Harm";
            event_user(0);
        }
        break;
    case 3:
        with(voice)
        {
            translation_key = "_metal_sonic_voice_The_Creator";
            event_user(0);
        }
        break;
    case 4:
        with(voice)
        {
            instance_destroy();
        }
}

