/// @description d3d - Sets the transformation to a rotation around the x-axis with the indicated amount.
/// @param angle the angle to rotate

// get the sin and cos of the angle passed in
var c = dcos(argument0);
var s = dsin(argument0);

// build the rotation matrix
var m = matrix_build_identity();
m[5] = c;
m[6] = -s;

m[9] = s;
m[10] = c;

matrix_set( matrix_world, m);
