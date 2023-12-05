action_inherited();
/// Update horizon
//with water other.horizon.absolute_y = y;
    with horizon {
        image_index = objScreen.image_index*0.34;
        absolute_y=other.water.y;
        }

//star flash
stars1.image_alpha = 0.5+abs(cos(degtorad(objScreen.image_index*2.4)))*0.5;
stars2.image_alpha = 0.5+abs(sin(degtorad(objScreen.image_index*2.4)))*0.5;
if instance_exists(objLevel.player[0]) {
    if objLevel.player[0].underwater == true {
        seaback.depth=20;
    } else {
        seaback.depth=5000;
    }
}

