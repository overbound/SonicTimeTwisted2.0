if image_index == 5 {
    with objGalanikFloat {
        instance_create(x-16,y+4,objGalacnikHandPart);
        instance_create(x+10,y+52,objGalacnikFootPart);
        instance_create(x,y-64,objGalacnikStatchPart);
        instance_destroy();
    }
    with objCharacterFall {
        if state != 0 {
            gravity = 0.015;
            x=camera_get_view_x(view_camera[0])+objScreen.width*.5;
            y=camera_get_view_y(view_camera[0])+objScreen.height*.5;
        }
        state = 0;
    }
}

