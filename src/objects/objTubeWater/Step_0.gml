action_inherited();
///Active if Player Close
var xoffset;
if instance_exists(objPlayer) {
    xoffset = x - objPlayer.x;
    
    if abs(xoffset) <= 48 && y > objPlayer.y{
        active = true;
        visible = true;
        }
        else if y < ystart {
        
            yoffset+=1
            active = false;
    
            
            }
            
    if active == true {
    
        yoffset -= 6;
        
        if yoffset < -80 
            yoffset = -80;
        }
        
    y = ystart+yoffset;
    
    yscale = abs(ystart-y);
    
    //change reaction script
    
    if visible == true {
    reaction_script=player_reaction_fan;
    }
    else reactionscript = noone;
}

