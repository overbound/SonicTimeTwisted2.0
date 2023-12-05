// initialize level settings
objProgram.in_past=false;
objLevel.act = 2;
objLevel.flower = sprFlowerAA;
//objLevel.bg = instance_create(x,y,objAAFutureBack);
with objProgram{ 
     if spawn_tag == 0 {
        cutscene = true;
     }
}
// setup titlecard
get_titlecard_array(room);