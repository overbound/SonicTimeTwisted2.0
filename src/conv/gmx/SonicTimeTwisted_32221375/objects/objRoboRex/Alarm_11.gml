gravity_direction=270;
gravity=.25;
remove=2;
direction=80;
speed=4;
image_index=1;
with head {
    gravity_direction=270;
    gravity=.25;
    direction = 120;
    speed = 4;
    reaction_script=noone;
    remove=2;
}
with foot {
    direction = 120;
    speed = 4;
    gravity_direction=270;
    gravity=.25;
    reaction_script=noone;
    remove=2;
}
with instance_create(x,y,objRoboRexFrontFoot) {
    direction = 60;
    speed = 4;
    gravity_direction=270;
    gravity=.25;
    remove=2;
}

