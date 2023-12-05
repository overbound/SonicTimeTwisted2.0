action_inherited();
image_speed = 0;
state = 0;
remove = 1;
/// Create glass
glass = instance_create(x-32, y-62, objCapsuleGlass);
glass.parent_id = id;
fake = false;

/// Create flowers
var i;
for (i=0; i<10; i+=1) {spark[i] = instance_create(x, y-36, objCapsuleSpark); spark[i].speed = 2; spark[i].direction = i*36;}

///state control for capsule
active=false;
player_id = noone;
camera_pass = false;

