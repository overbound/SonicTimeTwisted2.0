function rumble_short_strong_double() {
	var rgrid = false;
	rgrid[0, RUMBLE_APPEND_MODE] = 0;
	rgrid[0, RUMBLE_START_TIME] = 0;
	rgrid[0, RUMBLE_END_TIME] = 5;
	rgrid[0, RUMBLE_FORCE] = 75;
	rgrid[1, RUMBLE_START_TIME] = 10;
	rgrid[1, RUMBLE_END_TIME] = 15;
	rgrid[1, RUMBLE_FORCE] = 75;
	return rgrid;



}
