with (other) {
with instance_create(x,y,objPaddle) {
    //image_yscale = -1;
    remove = 0;
    x=other.xstart-32;
    y=other.ystart;
    top = true;
    parent=other.parent;
   // x=other.x;
   // y=other.y;
}
instance_destroy();

}
