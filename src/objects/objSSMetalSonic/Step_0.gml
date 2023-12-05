/// @description  Sprite Direction
spr_direction = -direction;
change_sprite_direction_int_frames(8);


/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);
depth1= depth;
if instance_exists(objSSLevel)
    if objSSLevel.started && started == false {
        path_start(path,7.85,path_action_stop,true);
        started = true;
    }

/// track position
if instance_exists(objSSPlayer)
    if objSSPlayer.closing==false {
        PlayerUpdateRacerProgress();
    }

/// Speed rubberband
if started == 1
    with objSSPlayer {
    
        if progress > other.progress {
        
            other.speed = 7.5;
        
        }
            else {
            
                other.speed = 5;
            
            }
}

/// Check if level ended. If so speed off.
if started == 2 {
    with objSSPlayer {
        if started == false {
            other.direction = other.exitDirection;
            other.speed = 8;
        }
    }
}

