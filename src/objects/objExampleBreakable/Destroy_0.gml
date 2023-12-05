// generate debris
with instance_create(x, y, objExampleBreakableDebris) {hspeed = -2; vspeed = -4; sprite_index = other.debris;
if objProgram.in_past
    image_index=1;
}
with instance_create(x+16, y, objExampleBreakableDebris) {hspeed = 2; vspeed = -4; sprite_index = other.debris;
if objProgram.in_past
    image_index=1;
}
with instance_create(x,y+16, objExampleBreakableDebris) {hspeed = -2; vspeed = -2; sprite_index = other.debris;
if objProgram.in_past
    image_index=1;
}
with instance_create(x+16, y+16, objExampleBreakableDebris) {hspeed = 2; vspeed = -2; sprite_index = other.debris;
if objProgram.in_past
    image_index=1;
}

//with instance_create(x,y+16, objExampleBreakableDebris) {hspeed = -2; vspeed = -2; sprite_index = other.debris;}

