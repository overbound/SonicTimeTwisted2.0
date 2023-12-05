action_inherited();
image_speed=.1;
top = instance_create(x+64,y-16,objLavaTop);
with top {
   image_xscale = 8;
}
seep[0]=instance_create(x+64,y,objLavaSeep);
with seep[0] {
    image_xscale=2;
    image_yscale=2;
}

