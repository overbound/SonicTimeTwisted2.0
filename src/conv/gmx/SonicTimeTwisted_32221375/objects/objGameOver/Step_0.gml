/// @description  Get transition mode
switch mode
{
case 1: // fade out
    if not alarm[0] and alarm[1] and input_check_pressed(cSTART) mode = -1;
    break;
case -1: // fade in
    if image_alpha>=1 {
        save_lives(3);
        stt_save_files();
        instance_destroy(); 
        break;
    }
    image_alpha += image_speed;
    break;
}

