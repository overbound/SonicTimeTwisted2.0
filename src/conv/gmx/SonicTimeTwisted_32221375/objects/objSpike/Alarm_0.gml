/// @description play sound
//if hide == true && !audio_is_playing(sndSpikeMove)
//play_sfx(sndSpikeMove,0);

var __b__;
__b__ = action_if_variable(moving, true, 0);
if __b__
{
action_set_alarm(64, 0);
}
