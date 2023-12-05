event_inherited();

if (player_id.underwater > 0)
{
	player_id.shield = noone;
	player_id.shield_type = -1;

	if (instance_exists(objWater))
	{
		objWater.alarm[0] = 4;
	}
	instance_destroy();
}
