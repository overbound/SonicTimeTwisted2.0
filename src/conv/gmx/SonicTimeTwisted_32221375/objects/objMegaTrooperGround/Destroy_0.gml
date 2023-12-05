play_sfx(sndBreak,0);
with instance_create(x,y,objMegaTrooperGroundPart) {
    direction = 120;
    image_index =0;
}
with instance_create(x+32,y,objMegaTrooperGroundPart) {
    direction = 60;
    image_index =1;
}

