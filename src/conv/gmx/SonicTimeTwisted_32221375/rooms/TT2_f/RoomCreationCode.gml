// initialize level settings
with objLevel {
    act = 2;
    flower = sprFlowerTT;
    bg = instance_create(x,y,objTTFutureBack2);
}
objProgram.in_past=false;
// setup titlecard
get_titlecard_array(room);