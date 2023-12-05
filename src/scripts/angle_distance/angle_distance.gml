function angle_distance(argument0, argument1) {
	// angle_distance(start, destination)
	return ((((argument1-argument0) mod 360) + 540) mod 360) - 180;



}
