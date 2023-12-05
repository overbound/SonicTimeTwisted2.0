/// @description  Update magnetism
if instance_exists(parent_id) {
    if parent_id < 0 || parent_id.shield_type != 2 {
        instance_create(x, y, objRingDropped);
        instance_destroy();
    }
    image_index = objScreen.image_index/4;
    var sx, sy;
    // handle magnetic pull
    sx = sign(parent_id.x-x);
    sy = sign(parent_id.y-y);
    hspeed += sx*(0.12+(0.36*(sign(hspeed)!=sx)));
    vspeed += sy*(0.12+(0.36*(sign(vspeed)!=sy)));
    speed = clamp(speed, -32, 32);
} else
{
    instance_create(x, y, objRingDropped);
    instance_destroy();
}
    


