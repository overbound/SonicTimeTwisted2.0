if state != 1 && alarm[0] == -1 {
    if x > other.x {
        wall_facing = -1;
    } else wall_facing = 1;
    state = 1;
    store_speed = hspeed;
    stopped = true;
    alarm[0] = 80;
}

