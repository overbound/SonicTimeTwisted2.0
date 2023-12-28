switch state {
case 0:
break;
case 1://falling
        gravity_direction = 270;
        gravity = 0.125;
        
        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + (speed*.88))
break;
case 2://landing
 y = objTitleRing.y       
break;

}

