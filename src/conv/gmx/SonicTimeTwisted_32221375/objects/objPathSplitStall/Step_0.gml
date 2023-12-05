/// @description  Handle state
if not active
{
    player_id = 0;
       
}
else
{   
    
    // control player
    with player_id
    {
        
        if path_index>-1 exit;
    // set path based on input
if input_check_pressed(cLEFT) 
        {   
            path_start(other.path[0], other.path_force, other.path_finish, other.path_absolute);
            other.active = false;
        }
    else if input_check_pressed(cRIGHT)     
        {
            path_start(other.path[1], other.path_force, other.path_finish, other.path_absolute);
            other.active = false;
        }
    else if input_check_pressed(cUP) 
        {
            path_start(other.path[2], other.path_force, other.path_finish, other.path_absolute);
            other.active = false;
        }
    else if input_check_pressed(cDOWN)
        {
            path_start(other.path[3], other.path_force, other.path_finish, other.path_absolute);
            other.active = false;
        }
        
        if other.active == false {
    
        // animate
        animation_new = "spin";
        timeline_speed = 1;
        image_angle = 0;
        // states and flags
        state = player_state_path;
        rolling_jump = false;
    }
        
        }
    }

