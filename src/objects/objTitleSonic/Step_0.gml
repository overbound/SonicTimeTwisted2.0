switch state {
case 0:
break;
case 1://falling
        gravity_direction = 270;
        gravity = 0.125;
        
        __view_set( e__VW.YView, 0, camera_get_view_y(view_camera[0]) + (speed*.88) )
break;
case 2://landing
 y = objTitleRing.y       
break;

}

