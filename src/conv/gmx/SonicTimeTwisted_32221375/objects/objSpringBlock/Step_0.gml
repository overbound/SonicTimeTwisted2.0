// check collision code
with objLevel.player[0]{
    if abs(x - other.x) < 128
    {
       if other.y < other.ystart +32
            other.y += 4;
        }
    else{
        if other.y > other.ystart {
            other.y -=4;
        } else other.y = other.ystart;
    }
    
    
    
    
    
}

