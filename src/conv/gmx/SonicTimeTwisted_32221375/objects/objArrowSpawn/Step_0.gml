if in_view(0, 0) && alarm[0] == -1 {
    alarm[0] = 250;
}
if alarm[0] == 240 {
    image_index=0;
}
if alarm[0] == 10 {
    image_index=1;
} 
else if alarm[0] == 0 {
    instance_create(x,y-4,objArrowParent);
    if objProgram.in_past == false
        play_sfx(sndLaserShot,4);
}

