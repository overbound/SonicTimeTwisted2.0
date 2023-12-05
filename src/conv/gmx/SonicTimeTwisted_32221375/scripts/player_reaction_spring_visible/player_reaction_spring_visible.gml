//player_reaction_spring_visible(local_id)
var rotation_offset, spring_hspeed, spring_vspeed;
// get angle relative to current rotation
rotation_offset = angle_wrap((round(argument0.image_angle/90)*90)-mask_rotation);
// check collision code
if (argument1==1) and (rotation_offset!=90) return false;
if (argument1==-1) and (rotation_offset!=270) return false;
if (argument1==2) and (rotation_offset!=0) return false;
if (argument1==-2) and (rotation_offset!=180) return false;
with argument0 { 
    if appear == false {
        appear=true;
        alarm[1]=50;
    }
}
// check collision code
if (argument1==1) and (rotation_offset!=90) return false;
if (argument1==-1) and (rotation_offset!=270) return false;
if (argument1==2) and (rotation_offset!=0) return false;
if (argument1==-2) and (rotation_offset!=180) return false;
// trigger spring
argument0.image_index = 0;
argument0.image_speed = 1;
play_sfx(sndSpringHigh, 2);
// get spring vectors
spring_hspeed = -sine[rotation_offset]*argument0.force;
spring_vspeed = -cosine[rotation_offset]*argument0.force;
// bounce from spring
if (spring_hspeed!=0) {xspeed = spring_hspeed; facing = sign(xspeed);}
if (spring_vspeed==0) {if landed sliding = 16;} else
{
    // states and flags
    state = player_state_fall;
    spinning = false;
    jumping = false;
    rolling_jump = false;
    jump_action = true;
    // movement and collision
    yspeed = spring_vspeed;
    // set air state
    player_in_air();
    // character values
    if character_id==3 glide_falling = false;
    // animate
    if argument0.animation {animation_new = "flip"; timeline_position = 0;} else animation_new = "rise";
    image_angle = gravity_angle();
}
// state changed
return true;
