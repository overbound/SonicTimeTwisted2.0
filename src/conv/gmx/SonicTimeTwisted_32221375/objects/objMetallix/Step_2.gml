/// @description  update laser, head x,y
if instance_exists(laser) {
    laser.x=x;
    laser.y=y+60;
}
if instance_exists(head) && state < 10{
    head.x=x;
    head.y=y+headOffset;
}

