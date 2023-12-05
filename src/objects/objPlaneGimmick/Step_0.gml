if (active)
{
	///input
	with objPlayer {
		if landed {
		
		if input_check(cDOWN) && !input_check(cACTION) && y+32 < camera.bottom {
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
