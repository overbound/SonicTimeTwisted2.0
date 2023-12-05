/// @description  Get transition mode
switch mode
{
case 1: // fade out
    if (screenOffset>=-64) {if next_room>-1 room_goto(next_room); mode = -1; break;}
    screenOffset +=8;
    break;
case -1: // fade in
    if screenOffset>=532 {instance_destroy(); break;}
    screenOffset +=8;
    break;
}

