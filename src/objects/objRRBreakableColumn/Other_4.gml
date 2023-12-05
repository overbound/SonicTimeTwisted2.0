if (image_xscale == -1)
{
	/// Reverse direction
	x -= 128;
	image_xscale = 1;
	if objProgram.in_past == true {
		sprite_parts = sprFFCollapsingPartsRight;
		image_index = 1;
    }
    else {
		sprite_parts = sprFFFCollapsingPartsRight;
		image_index = 3;
	}

}
