// initialize level settings
with objLevel {
    bg = instance_create(x,y,objRRFBack);
    act = 2;
    flower = sprFlowerRR;
}
objProgram.in_past=false;
// setup titlecard
get_titlecard_array(room);