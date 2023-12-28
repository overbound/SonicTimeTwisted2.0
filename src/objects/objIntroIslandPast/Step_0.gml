if zoom == true {
    //zoomFactor-=0.25;
    __view_set( e__VW.WView, 0, objScreen.width - (zoomFactor) );
    __view_set( e__VW.HView, 0, objScreen.height - (zoomFactor) );
    __view_set( e__VW.XView, 0, camera_get_view_x(view_camera[0]) + (zoomFactor*.5) );
    __view_set( e__VW.YView, 0, camera_get_view_y(view_camera[0]) + (zoomFactor*.5) );
}

