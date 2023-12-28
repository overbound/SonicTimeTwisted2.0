x = parentId.x;
y = parentId.y;

if life <= 0 {
    with objLevel.player[0] {
        camera.left = camera_get_view_x(view_camera[0]);
        camera.top = camera_get_view_y(view_camera[0]);
        camera.right = camera_get_view_x(view_camera[0])+objScreen.width;
        camera.bottom = camera_get_view_y(view_camera[0])+objScreen.height;
    
    }
    play_sfx(sndGalanikDeathScreech,0);
    instance_create(x,y,objFinalEnding);
    instance_destroy();
   
}

/// animate eye fire
flame_index += .25;
if flame_index  == 4 {
    flame_index = 0;
}

