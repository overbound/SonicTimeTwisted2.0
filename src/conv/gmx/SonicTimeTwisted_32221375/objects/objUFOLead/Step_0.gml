
if instance_exists(objLevel.player[0])
with objLevel.player[0].camera {
    other.xCameraOffset=xSpeed*0.5;
    }
    
    UFO[1].x=x+lengthdir_x(distance,angle+UFO[1].offset);
    UFO[1].y=y+lengthdir_y(distance,angle+UFO[1].offset);
    UFO[2].x=x+lengthdir_x(distance,angle+UFO[2].offset);
    UFO[2].y=y+lengthdir_y(distance,angle+UFO[2].offset);
    UFO[3].x=x+lengthdir_x(distance,angle+UFO[3].offset);
    UFO[3].y=y+lengthdir_y(distance,angle+UFO[3].offset);
    UFO[4].x=x+lengthdir_x(distance,angle+UFO[4].offset);
    UFO[4].y=y+lengthdir_y(distance,angle+UFO[4].offset);

    angle+=6;
    if distance < 24
        distance+=2;
        else {
                speed = 4;
                direction=225;
        }
        x+=xCameraOffset;

