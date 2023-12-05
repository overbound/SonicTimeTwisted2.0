var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavior
// we've stopped this frame
if stopped {stopped = false; speed = 0; x_origin = x;}
// state machine
switch (state)
{
case 0: // patrolling
    // accelerate
    if speed < speed_cap
    {
        speed += acceleration;
        if speed > speed_cap speed = speed_cap;
    }
    // turn around on hitting walls
    if (wall_facing != 0)
    {
        store_facing = -wall_facing;
        store_speed = hspeed * -wall_facing;
        state = 1
        stopped = true;
        break;
    }
    // turn around at cliff-side
    if timer > 15 and (cliff_facing != 0)
    {
        store_facing = -facing;
        store_speed = -hspeed;
        state = 1;
        stopped = true;
        break;
    }
    gun_angle = degtorad(270);
    arm_timer += pi / 45;
    arm_angle = pi / 6 * cos(arm_timer);
    if (arm_timer >= (2 * pi)) arm_timer -= 2 * pi;
    // wait a second before locking on
    if (timer >= 60)
    {
        with objPlayer
        {
            var x_delta = (x - other.x) * other.facing;
            if x_delta > 0 and x_delta < 200
            {
                //lock on
                other.state = 2;
                other.stopped = true;
                other.timer = 0;
                other.store_facing = other.facing;
                other.store_speed = other.hspeed;
                other.hspeed = 0;
                other.target = id;
                break;
            }
        }
    }
    break;
case 1: // turning
    hspeed = store_speed;
    facing = store_facing;
    timer = 0;
    state = 0;
    gun_angle = degtorad(270);
    break;
case 2: // aiming
    if instance_exists(target)
    {
        if (facing > 0) arm_angle = degtorad(point_direction(x, target.y, target.x, y)); else
        arm_angle = degtorad(point_direction(target.x, target.y, x, y));
    }
    if (arm_angle < (3 * pi / 2) and arm_angle > (pi / 2)) arm_angle = (3 * pi / 2);
    if (timer == 40)
    {
        state = 3
        timer = 0
        arm_sweep_origin = arm_angle
        break;
    }
    gun_angle = arm_angle;
    break;
case 3: // firing
    if not audio_is_playing(sndFireBlow) play_sfx(sndFireBlow, 3);
    if (timer == 120)
    {
        state = 0
        timer = 0
        facing = store_facing
        hspeed = store_speed
        break;
    }
    arm_angle = arm_sweep_origin + (pi * 0.125) * sin(timer * 0.1);
    gun_angle = arm_angle;
}
hand_point_x = x - facing * 10 + facing * 24 * cos(arm_angle);
hand_point_y = y - 1 + 24 * sin(arm_angle);
damage_point_x = hand_point_x + facing * (13 * cos(gun_angle) - 2);
damage_point_y = hand_point_y + 13 * sin(gun_angle);
if (state == 3) and ((timer mod 6) == 0)
{
    var fire_x = hand_point_x + facing * (24 * cos(gun_angle) - 2);
    var fire_y = hand_point_y + 24 * sin(gun_angle);
    var fire = instance_create(fire_x, fire_y, objMoleGunFire);
    fire.hspeed = facing * cos(arm_angle) * 1.75;
    fire.vspeed = sin(arm_angle) * 1.75;
    fire.alarm[0] = 60;
}

}
