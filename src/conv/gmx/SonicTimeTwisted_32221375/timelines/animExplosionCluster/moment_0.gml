/// @description  Create explosion
with instance_create(x+16, y+16, objVVBombExplosion) {
    depth = other.depth-1;
    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale;
}
// sound
//play_sfx(sndBombExplosion);

