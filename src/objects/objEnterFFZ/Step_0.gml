/// @description  Get transition mode
switch mode
{
case 0:
    if alarm[0] == -1 {
    
        mode=1;
    
    }
break;
case 1: // fade out
    if (image_alpha>=1) {
            room_goto(next_room);
            mode = -1;
        }
    
    if (image_alpha<1)
        image_alpha += fadeSpeed;
    break;
case -1: // fade in
    if image_alpha<=0 { 
    //if !instance_exists(objTitleCardFFZ)
        instance_create(x,y,objTitleCardFFZ);
        instance_destroy(); 
        break;
    }
    with objLevel.player[0] facing=other.playerFacing;
    image_alpha -= fadeSpeed;
    break;
}
//if objScreen.image_index mod 4 {
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
    part_particles_create(snowSystem, __view_get( e__VW.XView, 0 )+random(600), __view_get( e__VW.YView, 0 ), snow, 1);
//}

