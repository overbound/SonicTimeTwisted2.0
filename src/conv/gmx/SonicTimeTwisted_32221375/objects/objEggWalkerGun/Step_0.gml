
 
    with objPlayer { other.angleCanon = point_direction(other.walkerId.x, other.walkerId.y-64, x, y); }
 
         if (angleCanon > 310 || angleCanon < 50) && walkerId.image_xscale == -1 {
    
            image_angle = angleCanon;
        
        }
        else if (angleCanon < 230 && angleCanon > 130 )&& walkerId.image_xscale == 1 {
    
            image_angle = angleCanon;
        
        }
    

