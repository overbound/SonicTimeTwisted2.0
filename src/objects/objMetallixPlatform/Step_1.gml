if alarm[0] {
    visible = !visible;
} else visible = true;

///state
switch state {
case 1:
    x=floor(xstart+sin(objScreen.image_index*timex)*distancex);
break;
case 2:
    x=floor(xstart+cos(objScreen.image_index*timex)*distancex);
break;
case 3:
    x=floor(xstart-cos(objScreen.image_index*timex)*distancex);
    
break;
case 4:
    x=floor(xstart-sin(objScreen.image_index*timex)*distancex);
break;
case 5:
    x=floor(xstart+cos(yoffset*timex)*distancex);
    y=floor(objMetallixController.y+cos(yoffset*timey)*distancey);
    yoffset+=1;
break;
}
index++

/// update harm sensor
if instance_exists(harmSensor[0]){
    harmSensor[0].x=x+harmfulOffset;
    harmSensor[0].y=y;
    harmSensor[1].x=x-harmfulOffset;
    harmSensor[1].y=y;
}

