with instance_create(x+20,y,objSmallRock) {
    direction = 0;
}
with instance_create(x-20,y,objSmallRock) {
    direction = 120;
}
with instance_create(x,y+32,objSmallRock) {
    direction = 240;
}
play_sfx(sndRockSmash,2);
instance_destroy();


