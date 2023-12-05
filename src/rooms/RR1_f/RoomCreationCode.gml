// initialize level settings
// initialize level settings
with objLevel {
    bg = instance_create(x,y,objRRFBack);
    act = 1;
    flower = sprFlowerRR;
}
objProgram.in_past=false;
// setup titlecard
get_titlecard_array(room);
if (objProgram.spawn_tag == 0) instance_destroy(objTitlecard);