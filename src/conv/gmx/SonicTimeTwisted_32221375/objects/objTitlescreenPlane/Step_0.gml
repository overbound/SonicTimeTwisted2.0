if x < -64 {
    hsp = .5;
    image_xscale *= -1;
}
if x > room_width + 64 {
    hsp = -.5;
    image_xscale *= -1;
}
xreal+=hsp;
x= floor(xreal)

