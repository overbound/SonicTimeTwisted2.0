// initialize level settings
with objLevel {
    act = 2;
    flower = sprFlowerDD;
    bg = instance_create(x,y,objDDPastBack);
}
objProgram.in_past = true;
// setup titlecard
get_titlecard_array(room);