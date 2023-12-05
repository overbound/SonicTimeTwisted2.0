if instance_exists(objLevel.player[0])
    if objLevel.player[0].y < 5506 {
        with objParallax instance_destroy();
        objLevel.bg = instance_create(x,y,objDDFutureIndoorBackAct2);
        instance_destroy();
    }

