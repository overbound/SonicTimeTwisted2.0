/// @description  Update position
// fall
offset += fall_speed;
// drag tail to length
if (offset>length) y = ystart+(offset-length);
if (y>=ystart+max_distance) instance_destroy();
// stretch to length
image_yscale = ystart+min(offset, length)-y;

