var __b__;
__b__ = action_if_variable(move_platforms, true, 0);
if __b__
{
/// Platform movement
if objProgram.in_past {
    for (var i=0; i<6; i+=1)
    {
        platform[i].x += 1.5;
        if platform[i].bbox_left>18020 {platform[i].x -= 580; platform[i].y = platform[i].ystart;}
    }
} else {
    for (var i=0; i<6; i+=1)
    {
        platform[i].x -= 1.5;
        if platform[i].bbox_right<17548 {platform[i].x += 580; platform[i].y = platform[i].ystart;}
    }
}

}
