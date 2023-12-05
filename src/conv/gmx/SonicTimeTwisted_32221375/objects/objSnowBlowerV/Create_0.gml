action_inherited();
/// Initialize
// emitter
//instance_create(x, y - 48, objFFSnowEmitter);
// covering
with instance_create(x, y, objSnowBlowerVTop)
{
    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale;
    image_angle = other.image_angle;
}

