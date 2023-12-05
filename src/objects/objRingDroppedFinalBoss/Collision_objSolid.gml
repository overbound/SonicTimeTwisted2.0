/// @description  Handle bouncing
var relative_hspeed, relative_vspeed;
// get vectors relative to gravity direction
relative_hspeed = lengthdir_x(speed, (direction-gravity_direction)-90);
relative_vspeed = lengthdir_y(speed, (direction-gravity_direction)-90);
// vertical collision
if relative_vspeed>0 relative_vspeed *= -0.75;
// redirect using new vector
speed = point_distance(0, 0, relative_hspeed, relative_vspeed);
direction = point_direction(0, 0, relative_hspeed, relative_vspeed)+gravity_angle();

