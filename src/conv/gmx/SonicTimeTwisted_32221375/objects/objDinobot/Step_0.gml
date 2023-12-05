var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
if speed !=  0 exit;
player =instance_nearest(x,y,objPlayer);
with player {
    if other.x > x  other.image_xscale = -1;
        else other.image_xscale = 1;
        
        if other.y > y {
        
            other.remove=2;
        
        }
        }
        

}
