/// @description  Spike behavior
// search for players
if not alarm[0] and (gravity==0) with objPlayer if x+34>other.x and x-32<other.x {other.remove = 0; other.gravity = 0.32; break;}

// flicker if we're disappearing
visible = 1-(alarm[0] mod 2);

