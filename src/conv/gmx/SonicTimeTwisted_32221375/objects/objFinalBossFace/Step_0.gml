x = parentId.x;
y = parentId.y;

if life <= 0 {
    with objLevel.player[0] {
        camera.left = __view_get( e__VW.XView, 0 );
        camera.top = __view_get( e__VW.YView, 0 );
        camera.right = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 );
        camera.bottom = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 );
    
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

