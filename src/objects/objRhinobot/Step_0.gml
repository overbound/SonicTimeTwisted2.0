var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavoir
// reverse at walls and cliffs
if facing==wall_facing or facing==cliff_facing
{
    hspeed = 0;
    facing = -facing;
    
    // set to neutral state
    state = 0;
    image_index = 0;
    alarm[0] = 60;
}
// chase players
if (state!=4) and instance_exists(objPlayer)
{
    // must be within range and directly in front
    if point_distance(objPlayer.x, 0, x, 0)<range_x and point_distance(objPlayer.y, 0, y, 0)<range_y and (facing xor (objPlayer.x<x))
    {
        // charge if we're not already charging
        if state!=3 {state = 3; if abs(hspeed)<5 {image_index = 0; hspeed = 0; alarm[0] = 30;}}
    }
    else if state==3 and alarm[0]<=0
    {
        // stop charging
        state = 0;
        image_index = 0;
        hspeed = 5*facing;
        alarm[0] = 40;
    }
}
// state machine
switch state
{
case 0: // normal
    // brake after a short period
    if not alarm[0] {state = 1; image_index = 2; break;}
    // accelerate
    if abs(hspeed)<speed_cap hspeed = max(abs(hspeed)+acceleration, speed_cap)*facing;
    break;
case 1: // braking
    // turn around on complete stop
    if hspeed==0 {state = 2; facing = -facing; alarm[0] = 10; break;}
    // decelerate
    if abs(hspeed)>0 hspeed -= min(abs(hspeed), deceleration)*sign(hspeed);
    break;
case 2: // turning
    if not alarm[0] {state = 0; image_index = 0; alarm[0] = 60;}
    break;
case 3: // charging
    if not alarm[0] hspeed = 5*facing; 
    break;
case 4: // jumping
    if not alarm[0] and collision_box(offset_x, offset_y+1, 0, objSolid) {state = 0; vspeed = 0; gravity = 0;}
    break;
}
// animation
if state!=1 and state!=2 image_index = (objScreen.image_index*0.5) mod 2;

}
