if (abs(xspeed) >= 8)
{
	animation_new = "sprint";
}
else
{
	if (abs(xspeed) >= 6)
	{
		animation_new = "run";
	}
	else
	{
		animation_new = "walk";
	}
}
timeline_speed = 1/(9-clamp(abs(xspeed), 1, 8));
