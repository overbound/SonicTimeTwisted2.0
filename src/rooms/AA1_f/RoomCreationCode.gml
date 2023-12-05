// initialize level settings
objProgram.in_past=false;
objLevel.act = 1;
objLevel.flower = sprFlowerAA;

//objProgram.spawn_tag = 1;
with objLevel bg = instance_create(x,y,objAAFutureBack);
// setup titlecard
get_titlecard_array(room);
/*with objProgram{    
     if spawn_tag == 0 {
        cutscene = true;
     }
}*/