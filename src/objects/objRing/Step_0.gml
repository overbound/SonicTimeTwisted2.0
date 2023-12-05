image_index = objScreen.image_index div 4;
/// Detect magnetism
with objPlayer
{
    if shield_type!=2 continue;
    if (point_distance(x, y, other.x, other.y)>64) continue;
    with instance_create(other.x, other.y, objRingMagnetized) parent_id = other.id;
    with other instance_destroy();
    break;
}

