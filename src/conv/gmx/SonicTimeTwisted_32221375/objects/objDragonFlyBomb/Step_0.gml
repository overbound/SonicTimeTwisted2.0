/// @description Bomb check and movement

with objLevel.player[0] {
    other.offset = other.x - x;
}
// turn around if too far
if abs(offset) <= 4 {
    if alarm[0] == -1
        alarm = 160;
    
    remove = 0;
    gravity=.15;
    
    }

    
         
        

