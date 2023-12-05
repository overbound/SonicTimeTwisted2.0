action_inherited();
left = instance_create(x, y, objShieldEarth_Rock);
left.image_index = 0;
left.shield = id;
right = instance_create(x, y, objShieldEarth_Rock);
right.image_index = 1;
right.shield = id;
rock_alternate = 1;
rock_direction = 0;
left_x = 0;
left_y = 0;
left.x = x;
left.y = y;
right_x = 0;
right_y = 0;
right.x = x;
right.y = y;

