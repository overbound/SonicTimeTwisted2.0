/// @description  Create debris
for (var i=0; i<16; i+=1)
{
    with instance_create(bbox_left+(i mod 4)*16, bbox_top+(i div 4)*16, objVVRhinobotSpawnDebris)
    {
        speed = point_distance(other.x, other.y, x+8, y+8)*0.25;
        direction = point_direction(other.x, other.y, x+8, y+8);
    }
}

