if zoom == true {
    //zoomFactor-=0.25;
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (zoomFactor) );
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (zoomFactor) );
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (zoomFactor*.5) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (zoomFactor*.5) );
}

