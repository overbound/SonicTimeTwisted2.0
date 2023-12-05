/// @description  Handle Player State
if not active
{
    player_id=noone;
}
else
{    
angle = point_direction(x,y,player_id.x,player_id.y);
angle_new = (angle + orbit_speed + 360)mod(360);
player_id.x = lengthdir_x(radius,angle_new) + x;
player_id.y = lengthdir_y(radius,angle_new) + y;
            
    with player_id {
    
        // update underwater state
        player_update_water();
        // non-solid object collision
        player_collision_object();
        
        // jumping
        if input_check_pressed(cACTION) and not player_collision_ceiling(offset_y+5){
            
            other.active = false;
            other.allow_collision = false;
            other.alarm[0]=10; 
            player_is_jumping();
            
        }
        
        //check for other states
        if state != player_state_object_with_rumble {
        
            other.active = false;
            other.allow_collision = false;
            other.alarm[0]=40;   
        
        }
        if other.visible == false {
        
            other.active = false;
            other.allow_collision = false;
            other.alarm[0]=60; 
            player_is_falling();
       
        }
        
    }      
}

// Bubbles
for( var i=0; i < 24; i+=1 ) {
    bubble_angle[i] += 2;    
    bubblex[i] = lengthdir_x(bubble_length[i],bubble_angle[i]) + x;
    bubbley[i] = lengthdir_y(96,bubble_angle[i]) + y;
    
}
if visible == false {
        
        reaction_script = noone;
        
    }
    
    else {
    
        reaction_script = player_reaction_bubbles_badnik;
    
    }
    

