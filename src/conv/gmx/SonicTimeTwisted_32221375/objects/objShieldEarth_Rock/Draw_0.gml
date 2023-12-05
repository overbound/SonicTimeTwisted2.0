if instance_exists(shield) {
    rock_direction = shield.rock_direction;
}
if (penalty_shot)
{
    exit;
}
if (broken == false)
{
    draw_sprite(sprShieldEarth_Rock2, image_index, x, y);
}
else
{
    for (var i = 0; i <= 2; i++)
    {
        if (image_index == 0)
        {
            draw_sprite(sprShieldEarth_RockL, i, x + (lengthdir_x(floor(broken_value/2) + broken_offset * 2.5 - broken_value_max/2, rock_direction + (i * 120))) * 0.5,
                                                 y + (lengthdir_y(floor(broken_value/2) + broken_offset * 2.5 - broken_value_max/2, rock_direction + (i * 120))) * 0.5);
        }
        else
        {
            draw_sprite(sprShieldEarth_RockR, i, x + (lengthdir_x(floor(broken_value/2) + broken_offset * 2.5 - broken_value_max/2, rock_direction + (i * 120))) * 0.5,
                                                 y + (lengthdir_y(floor(broken_value/2) + broken_offset * 2.5 - broken_value_max/2, rock_direction + (i * 120))) * 0.5);
        }
    }
}

