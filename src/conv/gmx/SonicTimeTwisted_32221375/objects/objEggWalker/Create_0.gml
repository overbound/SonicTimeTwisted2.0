action_inherited();
/// Variables
xspeed= 0;
legFrames=8;
leftStop=false;
rightStop=false;
fire=false;
laserAngle = 90;
remove=0;
destroyed = false;
reaction_script=player_reaction_egg_walker;
image_speed =0;
smokeSpawn = noone;

/// Create Legs
frontRightLeg[0]=instance_create(x-50,y-24,objEggWalkerLeg);
frontRightLeg[1]=instance_create(x-75,y,objEggWalkerLeg);
frontLeftLeg[0]=instance_create(x,y-24,objEggWalkerLeg);
frontLeftLeg[1]=instance_create(x+25,y,objEggWalkerLeg);
backRightLeg[0]=instance_create(x,y-24,objEggWalkerLeg);
backRightLeg[1]=instance_create(x-25,y,objEggWalkerLeg);
backLeftLeg[0]=instance_create(x+50,y-24,objEggWalkerLeg);
backLeftLeg[1]=instance_create(x+75,y,objEggWalkerLeg);

sensorHandle=instance_create(x,y,objEggWalkerBossSensor);
if image_xscale==1{

// FRONT RIGHT LEG

with frontRightLeg[0] {

xoffset=-50;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

}

with frontRightLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=-75;
yoffset=0;
image_angle=90;
sprite_index=sprFrontRightLeg;
depth=2;

}

// FRONT LEFT LEG

with frontLeftLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=330;//330
sprite_index=sprFrontLeftLeg;

}

with frontLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=25;
yoffset=0;
image_angle=270;
sprite_index=sprFrontLeftLeg;

}

// Back RIGHT LEG

with backRightLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

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

}

// BACK LEFT LEG

with backLeftLeg[0] {

xoffset=50;
yoffset=-24;
image_angle=330;
sprite_index=sprBackLeftLeg;

}

with backLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=75;
yoffset=0;
image_angle=270;
sprite_index=sprBackLeftLeg;

}

}

//FACING LEFT image_index = -1
else{

// FRONT RIGHT LEG

with frontRightLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

}

with frontRightLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=-25;
yoffset=0;
image_angle=90;
sprite_index=sprBackRightLeg;
depth=2;

}

// FRONT LEFT LEG

with frontLeftLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=330;//330
sprite_index=sprFrontLeftLeg;

}

with frontLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=25;
yoffset=0;
image_angle=270;
sprite_index=sprFrontLeftLeg;

}

// Back RIGHT LEG

with backRightLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

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

}

// BACK LEFT LEG

with backLeftLeg[0] {

xoffset=50;
yoffset=-24;
image_angle=330;
sprite_index=sprBackLeftLeg;

}

with backLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=75;
yoffset=0;
image_angle=270;
sprite_index=sprBackLeftLeg;

}

}

var __b__;
__b__ = action_if_variable(image_xscale, 1, 0);
if __b__
{
{
/// Left Gun

gunHandle[0] = instance_create(x-24,y-64,objEggWalkerGun);
with gunHandle[0] {

    yoffset=-64;
    xoffset=32;
    walkerId= other.id;

}

gunHandle[1] = instance_create(x-64,y-68,objEggWalkerGun);
with gunHandle[1] {

    depth=10;
    yoffset=-68;
    xoffset=-38;
    walkerId= other.id;

}

/// Walk Left

// FRONT RIGHT LEG

with frontRightLeg[0] {

xoffset=-50;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

}

with frontRightLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=-75;
yoffset=0;
image_angle=90;
sprite_index=sprFrontRightLeg;
depth=2;

}

// FRONT LEFT LEG

with frontLeftLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=330;//330
sprite_index=sprFrontLeftLeg;

}

with frontLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=25;
yoffset=0;
image_angle=270;
sprite_index=sprFrontLeftLeg;

}

// Back RIGHT LEG

with backRightLeg[0] {

xoffset=0;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

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

}

// BACK LEFT LEG

with backLeftLeg[0] {

xoffset=50;
yoffset=-24;
image_angle=330;
sprite_index=sprBackLeftLeg;

}

with backLeftLeg[1] {

allowStop=true;
angleOffset=0;
stop = false;
xoffset=75;
yoffset=0;
image_angle=270;
sprite_index=sprBackLeftLeg;

}



}
}
else
{
{
/// Right Gun

gunHandle[0] = instance_create(x-24,y-64,objEggWalkerGun);
with gunHandle[0] {

    yoffset=-64;
    xoffset=-32;
    walkerId= other.id;

}

gunHandle[1] = instance_create(x-64,y-68,objEggWalkerGun);
with gunHandle[1] {

    depth=10;
    yoffset=-68;
    xoffset=+38;
    walkerId= other.id;

}

/// Walk Right
// FRONT RIGHT LEG
/*
if image_index == -1*/

with frontRightLeg[0] {

image_xscale=-1;
xoffset=51;
yoffset=-24;
image_angle=330;
sprite_index=sprFrontRightLeg;
depth=2;

}

with frontRightLeg[1] {

image_xscale=-1;
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

image_xscale=-1;
xoffset=0;//-50
yoffset=-24;//-24
image_angle=30;//330
sprite_index=sprFrontLeftLeg;

}

with frontLeftLeg[1] {

image_xscale=-1;
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

image_xscale=-1;
xoffset=25;
yoffset=-24;
image_angle=30;
sprite_index=sprFrontRightLeg;
depth=2;

}

with backRightLeg[1] {

image_xscale=-1;
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

image_xscale=-1;
xoffset=-50;//0
yoffset=-24;//-40
image_angle=30;
sprite_index=sprBackLeftLeg;

}

with backLeftLeg[1] {

image_xscale=-1;
allowStop=true;
angleOffset=0;
stop = false;
xoffset=-75;//-24
yoffset=0;//0
image_angle=270;
sprite_index=sprBackLeftLeg;

}




/* */
}
}
action_set_alarm(400, 1);
/// Start Walking
timeline_index = timeEggWalkerStartWalk
timeline_position = 0;
timeline_running = true;
timeline_loop = false;

/* */
/*  */
