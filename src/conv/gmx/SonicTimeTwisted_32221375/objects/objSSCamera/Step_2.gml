/// @description  Update direction
if instance_exists(objSSPlayer) {
    x = objSSPlayer.x - cos(degtorad(objSSPlayer.move_direction)) * distance;
    y = objSSPlayer.y + sin(degtorad(objSSPlayer.move_direction)) * distance;
    z = max(objSSPlayer.z + zf, -8);
    
    xto = objSSPlayer.x;
    yto = objSSPlayer.y;
    zto = objSSPlayer.z + zt;
}
dir1 = point_direction(xto, yto, x, y) - 90;
dir2 = d3d_point_direction(xto, yto, -zto, x, y, -z);

/// Update visible objects
var d = point_direction(x, y, xto, yto);
var left_bound = d - 47;
if(left_bound < 0)
{
    left_bound = left_bound + 360;   
}
var right_bound = (d + 47) mod 360;
if(left_bound > right_bound)
{
    with(objSSParent)
    {
        if (object_index != objSSPlayer && object_index != objSSMetalSonic && object_index != objSSEnd)
        {
            var objAngle = point_direction(other.x, other.y, x, y);
            visible = objAngle < right_bound || objAngle > left_bound;
        }
    }
}
else
{
    with(objSSParent)
    {
        if (object_index != objSSPlayer && object_index != objSSMetalSonic && object_index != objSSEnd)
        {
            var objAngle = point_direction(other.x, other.y, x, y);
            visible = objAngle > left_bound && objAngle < right_bound;
        }
    }
}


