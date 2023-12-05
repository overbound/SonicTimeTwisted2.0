var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavior
// ignore if turned around
if not alarm[0]
{
    // direction
    with instance_nearest(x, y, objPlayer) other.max_speed = sign(x-(other.x-16))*0.5; //{if x<other.x-16 other.max_speed = -0.5; else if x>other.x+16 other.max_speed = 0.5;}
    // speed
    if hspeed<max_speed hspeed = min(hspeed+0.025, max_speed); else
    if hspeed>max_speed hspeed = max(hspeed-0.025, max_speed);
}
// facing
if hspeed>0 image_xscale = 1;
if hspeed<0 image_xscale = -1;
// orb rotation
angle += pi/30*hspeed;
// adjust angles as the complete circles
if (angle>pi*2) angle -= pi*2; else
if (angle<pi*2) angle += pi*2;
// orb z-rotation
shift = 16*sin(angle);
// update orb position
for (var i=0; i<3; i+=1)
{
    orbs[i].x = x+(48+shift)*cos(angle+(pi*(2/3))*i);
    orbs[i].y = y+(48+shift)*sin(angle+(pi*(2/3))*i);
}

}
/// control orb freezing
for (i=0; i<3; i+=1) {
    with orbs[i] {
        if other.frozen 
            reaction_script = noone;
        else if gravity == 0
            reaction_script = player_reaction_harmful;
    }
}

