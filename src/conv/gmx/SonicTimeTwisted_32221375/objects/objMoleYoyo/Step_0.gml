var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavoir
// state machine
switch state
{
case 0: // patrolling
    // accelerate
    if (speed < speed_cap)
    {
        speed += acceleration;
        if (speed > speed_cap) speed = speed_cap;
    }
    // turn against walls and cliffs
    if (wall_facing != 0) or (timer > 15 and (cliff_facing != 0))
    {
        state = 1;
        store_speed = hspeed;
        stopped = true;
    }
    break;
case 1: // turning
    // stop moving this frame
    if stopped
    {
        stopped = false;
        speed = 0;
        x_origin = x;
    }
    // turn around once our yoyo has recoiled
    if (yoyo_length == 0)
    {
        facing = -facing;
        hspeed = -store_speed;
        timer = 0;
        state = 0;
    }
    break;
}
// ...
yoyo_timer += 0.05 + (0.04 * (yoyo_timer < pi));
if (yoyo_timer > 2 * pi) yoyo_timer -= 2 * pi;
// ...
arm_angle = (pi * 0.25) * cos(yoyo_timer) - (pi / 6);
// update length
var previous_yoyo_length = yoyo_length;
yoyo_length = max(52 * sin(yoyo_timer), 0);
// audio
if (previous_yoyo_length == 0) and yoyo_length > 0 play_sfx(sndYoyoThrow, 4);
if previous_yoyo_length > 0 and (yoyo_length == 0) play_sfx(sndYoyoCatch, 4);
// determine angle
yoyo_angle = arm_angle / 1.5;
line_point_x = x - (facing * 10) + (facing * 25 * cos(arm_angle));
line_point_y = (y - 1) + 25 * sin(arm_angle);
// update yoyo
yoyo.x = line_point_x + facing * yoyo_length * cos(yoyo_angle);
yoyo.y = line_point_y + yoyo_length * sin(yoyo_angle);
if yoyo_length > 10 and (yoyo.reaction_script != player_reaction_harmful) yoyo.reaction_script = player_reaction_harmful; else
if (yoyo_length <= 10) and yoyo.reaction_script > -1 yoyo.reaction_script = -1;

}
