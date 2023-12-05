// initialize level settings
objLevel.act = 1;
objLevel.flower = sprFlowerAA;
objLevel.paddle_switches = 0;
with objLevel bg = instance_create(x,y,objSSBack);
objProgram.in_past=false;
// setup titlecard
get_titlecard_array(room);
if objProgram.spawn_tag == 0 {
    objLevel.timer = 36000;
    objGameData.rings[0] = 0;
    objProgram.cutscene = false;
} else {    
    if objProgram.spawn_tag == 25 {
        with objSSBack {
            with backWall { image_index=1; }    
            with cloud[0] visible = true;
            with cloud[1] visible = true;
            with cloud[2] visible = true;
            with cloud[3] visible = true;
            alarm[0]=120;
        }
    }
}