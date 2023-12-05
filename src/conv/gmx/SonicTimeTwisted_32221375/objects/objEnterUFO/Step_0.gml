/// @description  Get transition mode
switch mode
{
case 1: // fade out
    if (image_alpha>=1) {if next_room>-1 room_goto(next_room); mode = -1; break;}
    image_alpha += image_speed;
    break;
case -1: // fade in
    if image_alpha<=0 { 
    if !instance_exists(objTitleCardSSZ)
        instance_create(x,y,objTitleCardSSZ);
        instance_destroy(); 
        break;
    }
    with objLevel.player[0] facing=other.playerFacing;
    image_alpha -= image_speed;
    break;
}

