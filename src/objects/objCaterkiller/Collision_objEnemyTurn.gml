if x > other.x {
    if image_xscale < 0
    {
        image_xscale = -image_xscale;
        turning = sign(image_xscale);
        turning_point = x;
    }
} else {
    if image_xscale > 0
    {
        image_xscale = -image_xscale;
        turning = sign(image_xscale);
        turning_point = x;
    }
}

