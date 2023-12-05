action_inherited();
/// Initialize enemy
var i;
image_speed = 0;
offscreen_enabled = true;
// states and flags
state = 0;
// physics
max_speed = -0.5;
angle = 0;
shift = 0;
// orbs
for (i=0; i<3; i+=1) orbs[i] = instance_create(x, y, objOrbinautOrb);

if objProgram.in_past == true {
    sprite_index=sprLegonaut;
}

