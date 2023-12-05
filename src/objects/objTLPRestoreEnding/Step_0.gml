switch state {
case 0:
    with objLittlePlanetPiece1 {
        move_towards_point(other.x,other.y,2);
    }
    with objLittlePlanetPiece2 {
        move_towards_point(other.x,other.y,2);
    }
    with objLittlePlanetPiece3 {
        move_towards_point(other.x,other.y,2);
    }
    if alarm[0] < 400 {
        state = 1;
    }
break;
case 1:
    with objLittlePlanetPiece1 {
        move_towards_point(other.x,other.y,.05);
    }
    with objLittlePlanetPiece2 {
        move_towards_point(other.x,other.y,.05);
    }
    with objLittlePlanetPiece3 {
        move_towards_point(other.x,other.y,.05);
    }
    if alarm[0] < 200 {
        state = 2;
        with objLittlePlanetPiece1 instance_destroy();
        with objLittlePlanetPiece2 instance_destroy();
        with objLittlePlanetPiece3 instance_destroy();
    }
    image_alpha +=.0125;
    radius +=2;
break;
case 2:
    image_alpha +=.0125;
    radius +=2;
    if radius > 320 {
        state = 3;
    }
break;
case 3:
    image_alpha -=.025;
break;
}

