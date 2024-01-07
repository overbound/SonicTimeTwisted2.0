if (active) {
	///input
	var can_move_down = true;
	if (input_check(cDOWN))
	{
	    // make sure the plane cannot, in some cases, descend into solid ground
	    can_move_down = !place_meeting(x, y+2, objSolid);
	}

	with objPlayer {
		if landed {
		
			if input_check(cDOWN) && can_move_down && !input_check(cACTION) && y+32 < camera.bottom {
				other.y+=2;
			}
		
			if input_check(cUP) && !input_check(cACTION) && y -32 > camera.top {
				other.y-=2;
			}
		}
	}

	/// check allowCollision
	if !place_meeting(x,y,objPlaneStop) {
		allowCollision = true;
	}

}
