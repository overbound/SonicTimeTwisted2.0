/// @description  create mega trooper
with objLevel.player[0] {
    if x > other.x -256 && !instance_exists(objMegaTrooper){
    
        other.trooperId=instance_create(other.x,other.y,objMegaTrooper);
    
    }
    
    if instance_exists(camera)
    if (camera.bottom < camera_get_view_y(view_camera[view_current])+240) {
    
        __view_set( e__VW.YView, view_current, camera_get_view_y(view_camera[view_current]) - (2) );    
    
    }

}    

