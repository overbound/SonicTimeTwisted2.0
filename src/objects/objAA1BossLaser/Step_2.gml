/// @description  State machine
// lock to parent position (if we're not disappearing)
if state>-1 {x = parent_id.x; y = parent_id.y;}
// increase distance (also necessary to re-find target)
distance += firing_speed;
// set offset
var sx = lengthdir_x(distance, direction);
var sy = lengthdir_y(distance, direction);
ox = x+sx;
oy = y+sy;
// if we find our target
if (state!=0) and collision_line(x, y, ox, oy, objAA1BossFloor, 1, 1)
{
    // re-adjust until we're barely touching
    while (abs(sx)>=1) or (abs(sy)>=1) {sx *= 0.5; sy *= 0.5; if collision_line(x, y, ox, oy, objAA1BossFloor, 1, 1) {ox -= sx; oy -= sy;} else {ox += sx; oy += sy;}}
    distance = point_distance(x, y, ox, oy);
}
// handle state
switch state
{
case -1: // scale down until we disappear
    if distance<1 or x<29 or y>499 or collision_circle(x, y, 3, objAA1BossFloor, 1, 1) instance_destroy();
    break;
case 0: // continue if we reach the floor
    if collision_line(x, y, ox, oy, objAA1BossFloor, 1, 1) or ox<29 or oy>499 state = 1;
    break;
case 1: // execute attack pattern
    // determine pattern
    switch pattern
    {
    case 0: // sweep upward
        if direction>180 direction = angle_wrap(direction-sweeping_speed); else {speed = firing_speed; state = -1;}
        break;
    case 1: // sweep downward
        if direction<275 direction = angle_wrap(direction+sweeping_speed); else {speed = firing_speed; state = -1;}
        break;
    case 2: // spread
        if image_xscale<2.5 image_xscale += 0.015625 else {speed = firing_speed; state = -1;}
        break;
    default:
        speed = firing_speed;
        state = -1;
    }
    // tell metal to stop firing
    if (state==-1) {parent_id.firing = false; parent_id.alarm[1] = 30;}
    break;
}
// animate
visible = !visible;
image_angle = direction+90;
image_yscale = distance/33;
if (pattern==2) image_yscale += (image_xscale*0.375);

