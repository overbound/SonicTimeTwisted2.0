if (active) {
	{
		/// Plane Motion
		var prev_x = x;
		var player_landed = false;
		with objPlayer {
			player_landed = landed;
			// clamping x instead of relying on speed, otherwise the player can fly off the plane
			other.x = clamp(other.x, x - 14, x + 4);
			if landed
			{
				rumble(rumble_short_weakest);
			}
			else
			{
				if other.y < y
				{
					other.y +=1;
					// emergency reposition of the plane if the player is clipping through
					if(y > other.y - 38)
					{
						other.y = ceil(y)+38;
					}
				}
			}
		}

		y = floor(y);
		// make sure the plane cannot, in some cases, fly into solid ground
		if (x != prev_x) && place_meeting(x, y, objSolid)
		{
		    x = prev_x;
			// if the plane is blocked by a wall and the player jumps over it and goes too far, deactivate it
		    with objPlayer {
		        if (x < other.x + 4) || (x > other.x + 8)
		        {
		            other.active = false;
		        }
		    }
		    
		}
	}
}
/// reset if player x is less than plane
if instance_exists(objLevel.player[0]) {
	if x-320 > objLevel.player[0].x {
		x = xstart;
		y = ystart;
	}
}
if in_view(view_current,128) { 
	if not audio_is_playing(sndPropeller)
		play_sfx(sndPropeller, 4);
}

