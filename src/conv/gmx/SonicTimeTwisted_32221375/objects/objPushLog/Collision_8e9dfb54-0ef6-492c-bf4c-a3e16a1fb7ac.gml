/// @description  Handle landing
// vertical limit only
while place_meeting(x, y, other) y -= 1;
// stop falling
if place_meeting(x, y+1, other) {vspeed = 0; gravity = 0;}

