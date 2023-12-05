// player_reaction_shift_camera_right
if camera.right > __view_get( e__VW.XView, 0 )+__view_get( e__VW.HView, 0 ) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (2) );
} 
if room_width < __view_get( e__VW.XView, 0 )+__view_get( e__VW.HView, 0 ) {
    __view_set( e__VW.XView, 0, room_width-__view_get( e__VW.HView, 0 ) );
    with argument0 instance_destroy();
    
}
