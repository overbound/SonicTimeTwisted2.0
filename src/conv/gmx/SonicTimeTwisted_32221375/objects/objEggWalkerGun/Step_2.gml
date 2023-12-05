/// @description  Gun Cover & Laser Update
with coverId {
    image_angle=other.image_angle;
    image_xscale=other.image_xscale;
    x=other.x;
    y=other.y;
    depth=other.depth -3;
}
with laser {
   depth = other.depth-1;
   }

