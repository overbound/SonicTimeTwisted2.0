if instance_exists(shield) {
    rock_direction = shield.rock_direction;
}
if (penalty_shot)
{
    exit;
}
if (broken == false)
{
    shield_draw_glow(sprShieldEarth_Rock2, image_index, x, y, 1, 1, 0, c_white, 1, 1);
    draw_sprite(sprShieldEarth_Rock2, image_index, x, y);
}
else
{
    for (var i = 0; i <= 2; i++)
    {
        var px = x + (lengthdir_x(floor(broken_value/2) + broken_offset * 2.5 - broken_value_max/2, rock_direction + (i * 120))) * 0.5;
        var py = y + (lengthdir_y(floor(broken_value/2) + broken_offset * 2.5 - broken_value_max/2, rock_direction + (i * 120))) * 0.5;
        if (image_index == 0)
        {
            shield_draw_glow(sprShieldEarth_RockL, i, px, py, 1, 1, 0, c_white, 1, 1);
            draw_sprite(sprShieldEarth_RockL, i, px, py);
        }
        else
        {
            shield_draw_glow(sprShieldEarth_RockR, i, px, py, 1, 1, 0, c_white, 1, 1);
            draw_sprite(sprShieldEarth_RockR, i, px, py);
        }
    }
}
