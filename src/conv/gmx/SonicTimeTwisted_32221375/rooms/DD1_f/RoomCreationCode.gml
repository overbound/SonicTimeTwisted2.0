// initialize level settings
objProgram.in_past = false;
with objLevel {
    if (objProgram.spawn_tag==5) || (objProgram.spawn_tag==22) || (objProgram.spawn_tag==32) {
        bg = instance_create(x,y,objDDFutureIndoorBack);    
    } else {
        bg = instance_create(x,y,objDDFutureBack);
    }
    act = 1;
    flower = sprFlowerDD;
    if objProgram.spawn_tag==0 {
        objProgram.cutscene = true;
        started=true;
    
    }
}
// setup titlecard
get_titlecard_array(room);