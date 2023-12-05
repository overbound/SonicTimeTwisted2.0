solidsSS1Future();
futurePositionMap();
pastPositionMap();
if objProgram.in_past {
    progGrid = progressMapp[objProgram.special_past_current_level];
} else progGrid = progressMapf[objProgram.special_future_current_level];
z = 0;
//progGrid = progressMapf[2];
threeDee = true;
d3d_start();
d3d_set_culling(1)
d3d_set_hidden(1)
draw_set_alpha_test(true);
draw_set_alpha_test_ref_value(10);
/*
if objProgram.in_past
    background=backSSFuture;
    else background=backSSPast;*/
    background=backSSFuture1;
    
distance = 192;
fov = 60;
zf = 60;
zt = 60;
xto = 0;
yto = 0;
zto = 0;
dir1 = 0;
dir2 = 0
bgxrepeat = 4;

/* */
/*  */
