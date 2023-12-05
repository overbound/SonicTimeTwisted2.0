with objPlayer {
    if x+320 > other.x && x -320 < other.x && other.active == false{
    
        other.active = true;
        other.alarm[0]=1;    
    
    }
}

