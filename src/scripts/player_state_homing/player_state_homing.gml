function player_state_shield_homing() {
	if homing_target != noone && instance_exists(homing_target)
	{
		xspeed = dcos(point_direction(x, y, homing_target.x, homing_target.y))*15;
		yspeed = -dsin(point_direction(x, y, homing_target.x, homing_target.y))*15;

	} else {
		player_is_falling();	
	}
	
	if not player_movement_air() return false;

    //just in case the player hits the wall while homing in on an enemy
    if (player_collision_ceiling(offset_y) ||  player_collision_floor(offset_y) || player_collision_wall(offset_wall))
    {
        yspeed = 0;
		xspeed = 0;
		player_is_falling();
    }
}