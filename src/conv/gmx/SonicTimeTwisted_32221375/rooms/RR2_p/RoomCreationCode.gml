// initialize level settings
with objLevel {
    bg = instance_create(x,y,objRRPBack);
    act = 2;
    flower = sprFlowerRR;
}
objProgram.in_past=true;
// setup titlecard
get_titlecard_array(room);