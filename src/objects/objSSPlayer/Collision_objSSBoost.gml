
if (!onGround) exit;
if other.sound == noone
    other.sound = play_sfx(sndSSSpeedBoost,1);
	speed_boost_touched = true;
    
path_start(other.setpath, 14, path_action_stop, true)

move_speed += 2;
// rumble
rumble(rumble_short_strong_and_mid);
    

