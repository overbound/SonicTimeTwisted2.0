action_inherited();
/// Set offset
switch player_id.animation
{
case "spin":
    break;
default:
    x -= sine[player_id.angle]*4;
    y -= cosine[player_id.angle]*4;
}

image_xscale = player_id.facing;
/// Firing Code
if (objProgram.paused)
{
    exit;
}
if (!instance_exists(left))
{
    left = instance_create(x, y, objShieldEarth_Rock);
    left.image_index = 0;
    left.shield = id;
}
if (!instance_exists(right))
{
    right = instance_create(x, y, objShieldEarth_Rock);
    right.image_index = 1;
    right.shield = id;
}
if (left.shot == false)
{
    left_x = left_x + (lengthdir_x(28, rock_direction) - left_x) * 0.5;
    left_y = left_y + (lengthdir_y(12, rock_direction) - left_y) * 0.5;
}
if (left.broken)
{
    left.x = (left.x + (left_x - left.x) * 0.1 );
    left.y = (left.y + (left_y - left.y) * 0.1 );
}
if (right.shot == false)
{
    right_x = right_x + (lengthdir_x(28, rock_direction + 180) - right_x) * 0.5;
    right_y = right_y + (lengthdir_y(12, rock_direction + 180) - right_y) * 0.5;
}
if (right.broken)
{
    right.x = (right.x + (right_x - right.x) * 0.1 );
    right.y = (right.y + (right_y - right.y) * 0.1 );
}
if (instance_exists(left))
{
    if (left.shot == false)
    {
        left.x = x + left_x;
        left.y = y + left_y;
        left.depth = 1 * sign(left_y);
    }
} 
if (instance_exists(right))
{
    if (right.shot == false)
    {
        right.x = x + right_x;
        right.y = y + right_y;
        right.depth = 1 * sign(right_y);
    }
}
rock_direction -= 4;
while (rock_direction >= 360)
{
    rock_direction -= 360;
}
while (rock_direction < 0)
{
    rock_direction += 360;
}

