// initialize level settings
objLevel.act = 2;
objLevel.flower = sprFlowerAA;
objProgram.in_past = true;
with objProgram{ 
     if spawn_tag == 0 {
        cutscene = true;
     }
}
// setup titlecard
get_titlecard_array(room);