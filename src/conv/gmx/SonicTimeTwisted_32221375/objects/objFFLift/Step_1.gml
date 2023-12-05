/// @description  Lift behavior
// transfer running speed
tracked_speed = tracking_speed * lift_facing;
tracking_speed = 0;
// state machine
switch state
{
case 0: // rising
    if (tracked_speed > 7) lift_speed += tracked_speed * 0.28 - 0.075; else
    if (tracked_speed > 6) lift_speed += tracked_speed * 0.24 - 0.075; else
    if (tracked_speed > 5) lift_speed += tracked_speed * 0.16 - 0.075; else
    if (tracked_speed > 3) lift_speed += tracked_speed * 0.07 - 0.075; else
    lift_speed -= 0.1;
    // fall upon reaching peak
    if (lift_position >= lift_max_position) state = 1;
    break
case 1: // falling
    lift_speed -= 0.1
    if (lift_position <= 0) state = 0;
    break
}
// update relative position
lift_position += max(0 - lift_max_speed, min(lift_speed, lift_max_speed))
if (lift_position > lift_max_position) lift_position = lift_max_position; else
if (lift_position < 0) {lift_position = 0; lift_speed = 0;}
// check for clicking noise
if abs(lift_position - lift_click_position) > 60
{
    lift_click_position += 60 * sign(lift_position - lift_click_position);
    play_sfx(sndLiftClick, 2);
}
// update absolute position
x = floor(xstart + lift_position * lift_facing);
y = floor(ystart - lift_position);

