// initialize level settings
objLevel.act = 1;
objLevel.flower = sprFlowerDD;
with objLevel bg = instance_create(x,y,objDDPastBack);
objProgram.in_past = true;

with objLevel {
    if objProgram.spawn_tag==0 {
        objProgram.cutscene = true;
        started=true;
    }
}

// setup titlecard
get_titlecard_array(room);