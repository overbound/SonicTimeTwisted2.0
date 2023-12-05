/// @description  conditions on which to abort
// if the enemy is in view...
if(!is_in_view) exit;
// if there is no player to find, exit as well
if(!instance_exists(objPlayer)) exit;

var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
/// Enemy behavoir
// check if player is within range that activates most of this enemy's state machine
var player_within_activation_range = abs(objPlayer.x - x) < range_x_or_idle && abs(objPlayer.y - y) < range_y_or_idle;
if(state < 5)
{
    if(!player_within_activation_range)
    {
        state = 5;
    }
    else
    {
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
        if (state < 4) and instance_exists(objPlayer)
        {
            // must be within range and directly in front
            if point_distance(objPlayer.x, 0, x, 0)<range_x and point_distance(objPlayer.y, 0, y, 0)<range_y and (facing xor (objPlayer.x<x))
            {
                // charge if we're not already charging
                if state!=3 {state = 3; if abs(hspeed)<4 {timeline_position = 0; timeline_index = animSealbotCharge; hspeed = 0; alarm[0] = 30;}}
            }
            else if state==3 and (alarm[0]<=0 or facing==cliff_facing)
            {
                // stop charging
                if(facing==cliff_facing)
                {
                    facing = -facing;
                }
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
                if not alarm[0] {state = 1; /*timeline_position = 0; timeline_index = animSealbotIdle;*/ break;}
            
                // accelerate
                if abs(hspeed)<speed_cap hspeed = max(abs(hspeed)+acceleration, speed_cap)*facing;
                break;
            
            case 1: // braking
                // turn around on complete stop
                if hspeed==0 {state = 2; facing = -facing; timeline_position = 0; timeline_index = animSealbotCharge; alarm[0] = 10; break;}
            
                // decelerate
                if abs(hspeed)>0 hspeed -= min(abs(hspeed), deceleration)*sign(hspeed);
                break;
            
            case 2: // turning
                if not alarm[0] {state = 0; timeline_position = 0; timeline_index = animSealbotIdle; alarm[0] = 60;}
                break;
            
            case 3: // charging
                if not alarm[0] hspeed = 4*facing; 
                break;
            
            case 4: // jumping
                if not alarm[0] and collision_box(offset_x, offset_y+1, 0, objSolid) {state = 0; vspeed = 0; gravity = 0;}
                break;
        }
    }
}
else
{
    // idling - added because of slowdown this enemy was making even while offscreen
    if(player_within_activation_range)
    {
        state = 0;
    }
}

/* */
}
/*  */
