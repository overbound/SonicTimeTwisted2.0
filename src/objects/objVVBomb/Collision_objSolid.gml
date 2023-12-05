if (gravity > 0)
{
	/// Bounce
	// move outside collision
	if place_meeting(x, y, other.id) y -= 1;
	// reverse direction
	direction = 90;
	// stop moving if too slow
	if abs(speed)<1 {speed = 0; gravity = 0; image_speed = 0.25;}
	// sound
	stop_sound(sndSlam);
	play_sfx(sndSlam, 4);

}
