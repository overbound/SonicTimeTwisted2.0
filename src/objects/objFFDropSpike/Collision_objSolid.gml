/// @description  Handle landing
// abort if we're not actually falling
if alarm[0] or (gravity==0) exit;
// vertical limit only
while place_meeting(x, y, other) y -= 1;
// stop falling
vspeed = 0;
gravity = 0;
// sound
stop_sound(sndSpikeLand);
play_sfx(sndSpikeLand, 4);
// flicker out
alarm[0] = 80;

