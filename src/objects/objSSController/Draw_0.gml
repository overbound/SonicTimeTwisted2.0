
if state >= 3 {
    draw_set_alpha(flashAlpha);
    draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+__view_get( e__VW.WPort, 0 ),camera_get_view_y(view_camera[0])+__view_get( e__VW.HPort, 0 ),false);
    
    }

