// moving floors
for (i=0; i<6; i+=1){
    platform[i] = instance_create(left+14+(i*96), height+16, objVVPlatform);
    with platform[i] image_index = objProgram.in_past;
    }
// collapsing floors
for (i=0; i<16; i+=1)
{
    collapse[i] = instance_create(left+(i*32)-16, height, objSolid);
    collapse[i].sprite_index = sprVVFallingFloor;
    collapse[i].visible = true;
    collapse[i].image_speed = 0;
    collapse[i].image_index = objProgram.in_past;
}

