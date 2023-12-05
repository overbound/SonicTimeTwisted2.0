/// @description  reset walk timeline

timeline_index = timeEggWalkerStartWalk
timeline_position = 0;
timeline_running = true;
timeline_loop = false;



/// reset sensor
with sensorHandle {

    image_xscale*=-1;

}

var __b__;
__b__ = action_if_variable(image_xscale, -1, 0);
if __b__
{
{
/// Right Gun

with gunHandle[0] {

    yoffset=-64;
    xoffset=-32;
    walkerId= other.id;

}

with gunHandle[1] {

    depth=10;
    yoffset=-68;
    xoffset=+38;
    walkerId= other.id;

}

/// Walk Right
// FRONT RIGHT LEG


with frontRightLeg[0] {

step=0;
image_xscale*=-1;
xoffset=51;
yoffset=-24;
image_angle=330;
sprite_index=sprFrontRightLeg;
depth=2;


}

with frontRightLeg[1] {

step=0;
image_xscale*=-1;
allowStop=true;
angleOffset=0;
stop = false;
xoffset=76;
yoffset=0;
image_angle=270;
sprite_index=sprFrontRightLeg;
depth=2;

}

// FRONT LEFT LEG

with frontLeftLeg[0] {

step=0;
image_xscale*=-1;
xoffset=0;//-50
yoffset=-24;//-24
image_angle=30;//330
sprite_index=sprFrontLeftLeg;

}

with frontLeftLeg[1] {

step=0;
image_xscale*=-1;
allowStop=true;
angleOffset=0;
stop = false;
xoffset=-25;//-55
yoffset=0;//0
image_angle=90;
sprite_index=sprFrontLeftLeg;

}

// Back RIGHT LEG

with backRightLeg[0] {

step=0;
image_xscale*=-1;
xoffset=25;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

}

with backRightLeg[1] {

step=0;
image_xscale*=-1;
allowStop=true;
angleOffset=0;
stop = false;
xoffset=32;
yoffset=1;
image_angle=90;//90
sprite_index=sprBackRightLeg;
depth=2;

}


// BACK LEFT LEG

with backLeftLeg[0] {

step=0;
image_xscale*=-1;
xoffset=-50;//0
yoffset=-24;//-40
image_angle=30;
sprite_index=sprBackLeftLeg;

}

with backLeftLeg[1] {

step=0;
image_xscale*=-1;
allowStop=true;
angleOffset=0;
stop = false;
xoffset=-75;//-24
yoffset=0;//0
image_angle=270;
sprite_index=sprBackLeftLeg;

}




}
}
else
{
{
/// Left Gun
alarm[1]=80;

with gunHandle[0] {

    yoffset=-64;
    xoffset=32;
    walkerId= other.id;

}


with gunHandle[1] {

    depth=10;
    yoffset=-68;
    xoffset=-38;
    walkerId= other.id;

}

/// Walk Left
/// Walk Left

// FRONT RIGHT LEG

with frontRightLeg[0] {

xoffset=-50;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;
image_xscale*=-1;

}

with frontRightLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=-75;
yoffset=0;
image_angle=90;
image_xscale*=-1;
sprite_index=sprFrontRightLeg;
depth=2;

}

// FRONT LEFT LEG

with frontLeftLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=330;//330
sprite_index=sprFrontLeftLeg;
image_xscale*=-1;

}

with frontLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=25;
yoffset=0;
image_angle=270;
sprite_index=sprFrontLeftLeg;
image_xscale*=-1;

}

// Back RIGHT LEG

with backRightLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;
image_xscale*=-1;

}

with backRightLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=-25;
yoffset=0;
image_angle=90;
sprite_index=sprBackRightLeg;
depth=2;
image_xscale*=-1;

}

// BACK LEFT LEG

with backLeftLeg[0] {

xoffset=50;
yoffset=-24;
image_angle=330;
sprite_index=sprBackLeftLeg;
image_xscale*=-1;

}

with backLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=75;
yoffset=0;
image_angle=270;
sprite_index=sprBackLeftLeg;
image_xscale*=-1;

}



}
}
