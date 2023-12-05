// initialize level settings
with objLevel {
    act = 2;
    flower = sprFlowerTT;
}
with objLevel bg = instance_create(x,y,objTTPastBack2);
objProgram.in_past = true;
// setup titlecard
get_titlecard_array(room);