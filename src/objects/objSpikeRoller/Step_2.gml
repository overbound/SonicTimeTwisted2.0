/// @description  Handle state
if not active
{
    player_id=noone;
}
else
{
    with player_id {
    
    // check for death and stop collisions
        
            // Make sure death isn't happening
            if state ==player_state_dead { player_id = noone; }
            // reset local terrain list
            player_get_terrain_list();
            
            // update underwater state
            player_update_water();
            
            
            // non-solid object collision
            player_collision_object();
                
                
            
            // wall collision
            hit_wall = player_collision_wall(offset_wall);
            // handle wall collision
            if hit_wall
            {
            // eject
                wall_direction = player_wall_eject(hit_wall);
                // get crushed if applicable
                if wall_direction==0 and (hit_wall.harmful or terrain_id.harmful)
                {
                    play_sfx(sndHurt, 4);
                    player_is_dead();
                    other.player_id=noone;
                }
            // execute reaction
            if player_get_reaction(hit_wall, wall_direction) exit;
            // if moving towards wall
            if wall_direction!=0 and sign(xspeed)==wall_direction
            {
                // cut speed
                xspeed = 0;
                // push against wall
                if facing==wall_direction player_wall_push(hit_wall, wall_direction);
                }
            other.active = false;
            other.allow_collision = true;
            other.alarm[0] = 20; 
            
            player_is_falling();
            
            
            
}
        else if state != player_state_hurt or state !=player_state_dead {
            x = other.x;
            y = other.y-48;
        }
        
        // jumping
        if input_check_pressed(cACTION) and not player_collision_ceiling(offset_y+5){
            
            other.active = false; 
            player_is_jumping();
            
        
            
        
        }
        
        }
}

 ///harmful object position
 
 harm.x=x;
 harm.y=y;

