event_inherited();
if (player_id.underwater > 0)
{
	player_id.shield = noone;
	player_id.shield_type = -1;
	instance_destroy();
}

if (timeline_index == animShieldFlame)
{
	/// Animate
	// rotate flames
	image_angle = angle_wrap(image_angle+2*(abs(cosine[image_angle])+0.1));
	// flame trail
	if visible and not (objScreen.image_index mod 4) and player_id.landed and abs(player_id.xspeed)>4 and player_id.animation!="brake" and player_id.animation!="glide_slide" and objLevel != noone
	{
		part_type_orientation(objResources.flame, player_id.angle, player_id.angle, 0, 0, 0);
		part_particles_create(objLevel.particles, floor(player_id.x)+player_id.offset_y*sine[player_id.angle], floor(player_id.y)+player_id.offset_y*cosine[player_id.angle], objResources.flame, 1);
	}

}
