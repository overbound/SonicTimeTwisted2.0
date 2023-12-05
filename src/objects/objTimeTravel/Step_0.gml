
/// Get transition mode
switch mode
{
case 1: // wipe out
    if (image_index > 32 )
    {
        if next_room>-1 room_goto(next_room);
        mode = 0;
        break;
    }
        image_index += .5;
    break;
case 0: // start level
    objLevel.started = true;
    objLevel.timer_enabled = true;
    with objHud visible = true;
    mode = -1;
    //xoffset=426;
    image_xscale = image_xscale*-1;
    
    if image_xscale == -2 {
       xoffset=426;
    } else xoffset=0;
    break;
case -1: // wipe in
    if (image_index <= 0) {instance_destroy(); break;}
        image_index -= .5;
    break;
}

// increase the shift amount; this will cycle the colours
shift += 0.01;

