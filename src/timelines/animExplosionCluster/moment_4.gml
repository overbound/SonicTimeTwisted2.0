/// @description  Create explosion
with instance_create(x-10, y+8, objVVBombExplosion) {
    depth = other.depth-1;
    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale;
}

