if state != 1 && alarm[0] == -1 {
    if x > other.x {
        wall_facing = -1;
    } else wall_facing = 1;
    store_facing = -wall_facing;
    store_speed = abs(hspeed) * -wall_facing;
    state = 1
    stopped = true;
    alarm[0] = 80;
}

