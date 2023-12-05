/// @description  State machine
switch state
{
case 0: // rising
    if y>ystart-80 {y -= 1; if y<=ystart-80 alarm[0] = 32;}
    break;
case 1: // falling
    if y<ystart {y += 8; if y>=ystart {alarm[1] = 32; 
    if in_view(view_current,32)
        play_sfx(sndSmash, 2);}}
    break;
}

