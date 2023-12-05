action_inherited();
with (other) {
remove=0;
image_speed=0;
image_index = 1;
//image_xscale=-1;
state=0;
direction = 300;
jaw = instance_create(x,y,objWhaleBossJaw)
with jaw { parentId = other; }
fin = instance_create(x,y,objWhaleFin)
with fin { parentId = other; }
draw_direction=direction;
explosionLoop=0;

jump_timer=20;

}
