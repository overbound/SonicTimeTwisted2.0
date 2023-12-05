objTitleRingOverlay.y = y;
if movement==1 {
    if y > ystart + 8 {
        gravity = -.5;
        movement=2;
        }
        else{
            gravity = .5
            gravity_direction = 270;
        }
        
        
        }
        
    else if movement == 2 and y <= ystart{
            y =ystart;
            gravity=0;
            }
            
            

