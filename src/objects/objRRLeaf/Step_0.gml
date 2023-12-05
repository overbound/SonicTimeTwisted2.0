visible = !visible;
if (is_wind) {
    hspeed = 16;
} else {
    if (hspeed > 0) {
        hspeed -= 0.25;
    }
    vspeed += 0.25;
}

