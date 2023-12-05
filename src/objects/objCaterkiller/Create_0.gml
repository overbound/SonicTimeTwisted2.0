action_inherited();
/// Initialize
image_speed = 0;
offscreen_enabled = true;
// states and flags
state = 0;
bouncing = false;
// other
turning = -1;
turning_point = x;
timer = 16;
flash_color = make_color_rgb(255, 72, 0);
// orbs
for (var i=0; i<3; i+=1) {orb[i] = instance_create(x, y, objCaterkillerOrb); orb[i].parent_id = id; orb[i].depth = other.depth+1+i;}
orb[0].offset = 10;
orb[1].offset = 24;
orb[2].offset = 38;

