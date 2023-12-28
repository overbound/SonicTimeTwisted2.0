/// @description  check if should destroy
if light.life <= 0 && state < 12 {
    with light reaction_script=noone;
    with lightShot instance_destroy();
    alarm[1]=10;
    state=12;
    speed=0;
    image_index=1;
    stop_all_music(false);
}

/// Calculate Rectangel Cordnates and alpha
if state >= 7 {
var viewOffset=8;
blackX[0]=camera_get_view_x(view_camera[0])-viewOffset;
blackY[0]=camera_get_view_y(view_camera[0])-viewOffset;
blackScaleX[0]=x-camera_get_view_x(view_camera[0])-110+viewOffset;
blackScaleY[0]=y-camera_get_view_y(view_camera[0])+110+viewOffset;
blackX[1]=blackX[0]+blackScaleX[0];
blackY[1]=blackY[0];
blackScaleX[1]=camera_get_view_x(view_camera[0])+objScreen.width-blackX[1]+viewOffset;
blackScaleY[1]=y-camera_get_view_y(view_camera[0])-110+viewOffset;
blackX[2]=x+110-viewOffset;
blackY[2]=y-110-viewOffset;
blackScaleX[2]=camera_get_view_x(view_camera[0])+objScreen.width-blackX[2]+viewOffset;
blackScaleY[2]=camera_get_view_y(view_camera[0])+objScreen.height+viewOffset;
blackX[3]=camera_get_view_x(view_camera[0])-viewOffset;
blackY[3]=y+110;
blackScaleX[3]=camera_get_view_x(view_camera[0])+objScreen.width-blackX[3]+viewOffset;
blackScaleY[3]=camera_get_view_y(view_camera[0])+objScreen.height-blackY[3]+viewOffset;
}

/// children x,y
light.x=x;
light.y=y;
graphic.x=x;
graphic.y=y;

