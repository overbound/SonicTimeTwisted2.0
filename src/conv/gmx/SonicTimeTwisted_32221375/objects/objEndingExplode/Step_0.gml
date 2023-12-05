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
            x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*.5;
            y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*.5;
        }
        state = 0;
    }
}

