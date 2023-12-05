if (back > -1)
{
	x = x mod (width+separation_x);
	y = y mod (height+separation_y);
}
else
{
	if (sprite_index > -1)
	{
		x = x mod (sprite_width+separation_x);
		y = y mod (sprite_height+separation_y);
	}
}
