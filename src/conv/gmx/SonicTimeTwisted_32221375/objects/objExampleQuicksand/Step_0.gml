
if inSand {
    if instance_exists(objLevel.player[0])
        if !place_meeting(x,y,objLevel.player[0]) {
            inSand = false;
        }
}

