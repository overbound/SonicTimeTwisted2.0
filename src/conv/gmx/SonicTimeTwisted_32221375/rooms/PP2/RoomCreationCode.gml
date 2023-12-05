// initialize level settings
with objLevel {
    act =2;
    flower = sprFlowerPP;
    bg = instance_create(x,y,objPPBackground);
}
objProgram.in_past=false;

// setup titlecard
get_titlecard_array(room);