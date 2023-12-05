action_inherited();
x2=x;
y2=y;
xOffset1Left=-3;
xOffset1Right=3;
xOffset2Left=-3;
xOffset2Right=3;
yOffset1Left=-3;
yOffset1Right=3;
yOffset2Left=-3;
yOffset2Right=3;
xOffset2LeftMax=0;
xOffset2RightMax=0;
yoffset =10;
platformId=noone;
createFlame=true;
laser=0;
xOriginOffset=0;
yOriginOffset=10;
state =0;
remove=0;
dir = 180;
if instance_exists(objLevel.player[0]) {
    dir = point_direction(x,y,objLevel.player[0].x,objLevel.player[0].y);
    
    if dir < 120 || direction > 240 {
    
        dir = 180;
    }
}
xspeed = dcos(dir)*4;
yspeed = -dsin(dir)*4;

