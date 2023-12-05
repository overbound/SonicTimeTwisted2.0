/// @description  Initialized
if state == -1 {
state = 0;
if parentId.image_xscale == 1    
{
    dirX = 1;
    laserAngle=0;
    angleCanon =180;
    laser=instance_create(x-64,y-68,objSquibotLaser);
    alarm[0]=120;
    image_angle=180;
    
    cover= instance_create(x,y,objSquibotGunCover);
    with cover parentId = other.id;
    
    with laser {
    
        gunId=other.id;
        xoffset = 0;
        yoffset = -22;
    
    }
}
else 
    {
        dirX = -1;
        laserAngle=180;
        angleCanon =0;
        laser=instance_create(x+64,y-68,objSquibotLaser);
        alarm[0]=120;
        image_angle=0;
        image_yscale =-1;
        
        cover= instance_create(x,y,objSquibotGunCover);
        with cover {
            parentId = other.id;
            image_yscale =-1;
        }
        
        with laser {
        
            gunId=other.id;
            xoffset = 0;
            yoffset = -22;//-22;
        
        }
    }
}

var __b__;
__b__ = action_if_variable(dirX, 1, 0);
if __b__
{
{
/// Points Left
with objPlayer { 
    var testDir = point_direction(other.x + other.laser.xoffset, other.y + other.laser.yoffset, x, y);
    if testDir < 310 && testDir  > 150
        other.angleCanon = testDir; 
        else other.angleCanon = 180;
    
    }
 
if alarm[0] > 30 || alarm[0] == -1 {
    
         if angleCanon > image_angle {
         
            image_angle +=1;
         
         } else if angleCanon < image_angle {
         
            image_angle -=1;
         
         } else image_angle = angleCanon;
}
        laserAngle=image_angle;
        
        with cover {
        
                x = other.x;
                y = other.y;
                image_angle = other.image_angle;
                
            }
        
    

}
}
else
{
{
/// Points Right
with objPlayer { 
    var testDir = point_direction(other.x + other.laser.xoffset, other.y + other.laser.yoffset, x, y);
    if testDir > 230 || testDir < 30
        other.angleCanon = testDir; 
        else other.angleCanon = 0;
    
}
image_angle = angle_wrap(image_angle);
if alarm[0] > 30 || alarm[0] == -1 {
    
         if angleCanon > image_angle && angleCanon < 30 {
         
            image_angle +=1;
         
         } else if image_angle > 230 && angleCanon < 30 {
         
            image_angle +=1;
         
         } else if angleCanon > 230 && image_angle > 230  && image_angle > angleCanon{
         
            image_angle -=1;
         
         } else if image_angle < 30 && angleCanon > 230 {
         
            image_angle -=1;
         
         }
         else image_angle = angleCanon;

} 
        laserAngle=image_angle;
        
        with cover {
        
                x = other.x;
                y = other.y;
                image_angle = other.image_angle;
                
            }
        
    

}
}
